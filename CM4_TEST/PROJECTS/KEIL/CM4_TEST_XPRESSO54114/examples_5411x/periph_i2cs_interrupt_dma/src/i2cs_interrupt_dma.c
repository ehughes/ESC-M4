/*
 * @brief I2CS bus slave example using interrupt mode and DMA
 *
 * @note
 * Copyright(C) NXP Semiconductors, 2015
 * All rights reserved.
 *
 * @par
 * Software that is described herein is for illustrative purposes only
 * which provides customers with programming information regarding the
 * LPC products.  This software is supplied "AS IS" without any warranties of
 * any kind, and NXP Semiconductors and its licensor disclaim any and
 * all warranties, express or implied, including all implied warranties of
 * merchantability, fitness for a particular purpose and non-infringement of
 * intellectual property rights.  NXP Semiconductors assumes no responsibility
 * or liability for the use of the software, conveys no license or rights under any
 * patent, copyright, mask work right, or any other intellectual property rights in
 * or to any products. NXP Semiconductors reserves the right to make changes
 * in the software without notification. NXP Semiconductors also makes no
 * representation or warranty that such application will be suitable for the
 * specified use without further testing or modification.
 *
 * @par
 * Permission to use, copy, modify, and distribute this software and its
 * documentation is hereby granted, under NXP Semiconductors' and its
 * licensor's relevant copyrights in the software, without fee, provided that it
 * is used in conjunction with NXP Semiconductors microcontrollers.  This
 * copyright, permission, and disclaimer notice must appear in all copies of
 * this code.
 */

#include "board.h"
#include <string.h>

/** @defgroup PERIPH_I2CSINTDMA_5411X I2CS bus slave example using interrupt mode and DMA
 * @ingroup EXAMPLES_PERIPH_5411X
 * @include "periph_i2cs_interrupt_dma\readme.txt"
 */

/**
 * @}
 */

/*****************************************************************************
 * Private types/enumerations/variables
 ****************************************************************************/

/* I2C transfer record for master */
static I2CM_XFER_T  i2cmXferRec;

/* I2C clock is set to 2MHz */
#define I2C_CLK_DIVIDER     (6)

/* 100KHz I2C bit-rate - going too fast may prevent the slave from
   responding in time */
#define I2C_BITRATE         (100000)

/* Slave address */
#define SLVADD              (0x24)

/* Example transfer size */
#define SENDSIZE 32

/* Master and slave buffers for this example */
uint8_t txMBuff[SENDSIZE], rxMBuff[SENDSIZE];
uint8_t SBuff[SENDSIZE];

/* DMA descriptors must be aligned to 16 bytes */
#if defined(__CC_ARM)
__align(16) static DMA_CHDESC_T dmaI2CDesc;
#endif /* defined (__CC_ARM) */

/* IAR support */
#if defined(__ICCARM__)
#pragma data_alignment=16
static DMA_CHDESC_T dmaI2CDesc;
#endif /* defined (__ICCARM__) */

#if defined( __GNUC__ )
static DMA_CHDESC_T dmaI2CDesc __attribute__ ((aligned(16)));
#endif /* defined (__GNUC__) */

/* Use FLEXCOMM3 as I2C Slave */
#define I2C0_FLEXCOMM     1
/*****************************************************************************
 * Public types/enumerations/variables
 ****************************************************************************/

/*****************************************************************************
 * Private functions
 ****************************************************************************/

/* Initializes pin muxing for I2C interface - note that SystemInit() may
   already setup your pin muxing at system startup */
static void Init_I2C_PinMux(void)
{
	/* This example is hard-coded for LPC_I2C0 */
#if defined(BOARD_NXP_LPCXPRESSO_54114)
	/* Connect the I2C1_SDA and I2C1_SCL signals to port pins */
	Chip_IOCON_PinMuxSet(LPC_IOCON, 0, 23, (IOCON_FUNC1 | IOCON_DIGITAL_EN));
	Chip_IOCON_PinMuxSet(LPC_IOCON, 0, 24, (IOCON_FUNC1 | IOCON_DIGITAL_EN));

#else
	/* Configure your own I2C pin muxing here if needed */
#warning "No I2C pin muxing defined"
#endif
}

/* Setup I2C */
static void setupI2CMaster(void)
{
	/* Setup clock rate for I2C */
	Chip_I2C_SetClockDiv(LPC_I2C0, I2C_CLK_DIVIDER);

	/* Setup I2CM transfer rate */
	Chip_I2CM_SetBusSpeed(LPC_I2C0, I2C_BITRATE);

	/* Enable I2C master interface */
	Chip_I2CM_Enable(LPC_I2C0);
}

/* Setup I2C */
static void setupI2CSlave(void)
{
	/* Some common I2C init was performed in setupI2CMaster(), so it doesn't
	   need to be done again for the slave setup. */

	/* Slave address on index 0 */
	Chip_I2CS_SetSlaveAddr(LPC_I2C0, 0, SLVADD);

	/* Clear interrupt status and enable slave interrupts */
	Chip_I2CS_ClearStatus(LPC_I2C0, I2C_STAT_SLVDESEL);
	Chip_I2C_EnableInt(LPC_I2C0, I2C_INTENSET_SLVPENDING | I2C_INTENSET_SLVDESEL);

	/* Enable I2C slave interface */
	Chip_I2CS_Enable(LPC_I2C0);
}

/* Setup DMA channels for I2C slave send and receive */
static void setupDMAForI2CS(void)
{
	/* Setup I2C0 slave channel for the following configuration:
	   - Peripheral DMA request
	   - Single transfer
	   - High channel priority */
	Chip_DMA_EnableChannel(LPC_DMA, DMAREQ_I2C0_SLAVE);
	Chip_DMA_EnableIntChannel(LPC_DMA, DMAREQ_I2C0_SLAVE);
	Chip_DMA_SetupChannelConfig(LPC_DMA, DMAREQ_I2C0_SLAVE,
								(DMA_CFG_PERIPHREQEN | DMA_CFG_TRIGBURST_SNGL | DMA_CFG_CHPRIORITY(0)));
}

/* Function to wait for I2CM transfer completion */
static void WaitForI2cXferComplete(I2CM_XFER_T *xferRecPtr)
{
	/* Test for still transferring data */
	while (xferRecPtr->status == I2CM_STATUS_BUSY) {
		/* Sleep until next interrupt */
		__WFI();
	}
}

/* Function to setup and execute I2C master transfer request */
static void SetupXferRecAndExecute(uint8_t devAddr,
								   uint8_t *txBuffPtr,
								   uint16_t txSize,
								   uint8_t *rxBuffPtr,
								   uint16_t rxSize)
{
	/* Setup I2C transfer record */
	i2cmXferRec.slaveAddr = devAddr;
	i2cmXferRec.status = 0;
	i2cmXferRec.txSz = txSize;
	i2cmXferRec.rxSz = rxSize;
	i2cmXferRec.txBuff = txBuffPtr;
	i2cmXferRec.rxBuff = rxBuffPtr;

	/* Wait for master to go pending - needed in mixed master/slave mode on single I2C bus */
	while (Chip_I2CM_IsMasterPending(LPC_I2C0) == false) {}

	Chip_I2CM_Xfer(LPC_I2C0, &i2cmXferRec);
	/* Enable Master Interrupts */
	Chip_I2C_EnableInt(LPC_I2C0, I2C_INTENSET_MSTPENDING | I2C_INTENSET_MSTRARBLOSS | I2C_INTENSET_MSTSTSTPERR);
	/* Wait for transfer completion */
	WaitForI2cXferComplete(&i2cmXferRec);
	/* Disable all Interrupts */
	Chip_I2C_DisableInt(LPC_I2C0, I2C_INTENSET_MSTPENDING | I2C_INTENSET_MSTRARBLOSS | I2C_INTENSET_MSTSTSTPERR);

	if (i2cmXferRec.status != I2CM_STATUS_OK) {
		DEBUGOUT("\r\nI2C error: %d\r\n", i2cmXferRec.status);
	}
}

/* Handler for slave start callback */
static void processSlaveTransferStart(uint8_t addr)
{}

/* Handler for slave send callback */
static uint8_t processSlaveTransferSend(uint8_t *data)
{
	/* Slave to master */
	dmaI2CDesc.source = DMA_ADDR(&SBuff[0] + SENDSIZE - 1);
	dmaI2CDesc.dest = DMA_ADDR(&LPC_I2C0->SLVDAT);
	dmaI2CDesc.next = DMA_ADDR(0);
	dmaI2CDesc.xfercfg = DMA_XFERCFG_CFGVALID | DMA_XFERCFG_SETINTA |
						 DMA_XFERCFG_SWTRIG | DMA_XFERCFG_WIDTH_8 | DMA_XFERCFG_SRCINC_1 |
						 DMA_XFERCFG_DSTINC_0 | DMA_XFERCFG_XFERCOUNT(SENDSIZE);

	/* Setup transfer descriptor and validate it */
	Chip_DMA_SetupTranChannel(LPC_DMA, DMAREQ_I2C0_SLAVE, &dmaI2CDesc);

	/* Setup data transfer */
	Chip_DMA_SetupChannelTransfer(LPC_DMA, DMAREQ_I2C0_SLAVE, dmaI2CDesc.xfercfg);

	Chip_DMA_SetValidChannel(LPC_DMA, DMAREQ_I2C0_SLAVE);

	return I2C_SLVCTL_SLVDMA;
}

/* Handler for slave receive callback */
static uint8_t processSlaveTransferRecv(uint8_t data)
{
	/* Master to slave */
	dmaI2CDesc.source = DMA_ADDR(&LPC_I2C0->SLVDAT);
	dmaI2CDesc.dest = DMA_ADDR(&SBuff[0] + SENDSIZE - 1);
	dmaI2CDesc.next = DMA_ADDR(0);
	dmaI2CDesc.xfercfg = DMA_XFERCFG_CFGVALID | DMA_XFERCFG_SETINTA |
						 DMA_XFERCFG_SWTRIG | DMA_XFERCFG_WIDTH_8 | DMA_XFERCFG_SRCINC_0 |
						 DMA_XFERCFG_DSTINC_1 | DMA_XFERCFG_XFERCOUNT(SENDSIZE);

	/* Setup transfer descriptor and validate it */
	Chip_DMA_SetupTranChannel(LPC_DMA, DMAREQ_I2C0_SLAVE, &dmaI2CDesc);

	/* Setup data transfer */
	Chip_DMA_SetupChannelTransfer(LPC_DMA, DMAREQ_I2C0_SLAVE, dmaI2CDesc.xfercfg);

	Chip_DMA_SetValidChannel(LPC_DMA, DMAREQ_I2C0_SLAVE);

	return I2C_SLVCTL_SLVDMA;
}

/* Handler for slave transfer complete callback */
static void processSlaveTransferDone(void)
{
	/* Disable DMA mode for the slave controller */
	Chip_I2CS_SlaveDisableDMA(LPC_I2C0);
}

/* I2C slavecallback function list */
const static I2CS_XFER_T i2csCallBacks = {
	&processSlaveTransferStart,
	&processSlaveTransferSend,
	&processSlaveTransferRecv,
	&processSlaveTransferDone
};

/* Setup data buffer with some value */
static uint32_t fillWorkBuff(uint8_t *buff, uint8_t seed, uint32_t bytes)
{
	int i;

	for (i = 0; i < bytes; i++) {
		buff[i] = seed;
		seed = seed + 1;
	}

	return seed;
}

/* Compate 2 fixed length buffers */
static bool compFail(uint8_t *ptr1, uint8_t *ptr2, uint32_t bytes)
{
	int i;

	for (i  = 0; i < bytes; i++) {
		if (ptr1[i] != ptr2[i]) {
			return true;
		}
	}

	return false;
}

/*****************************************************************************
 * Public functions
 ****************************************************************************/

/**
 * @brief	DMA Interrupt Handler
 * @return	None
 */
void DMA_IRQHandler(void)
{
	uint32_t errors, pending;

	/* Get DMA error and interrupt channels */
	errors = Chip_DMA_GetErrorIntChannels(LPC_DMA);
	pending = Chip_DMA_GetActiveIntAChannels(LPC_DMA);

	/* Check DMA interrupts of UART 0 TX channel */
	if ((errors | pending) & (1 << DMAREQ_I2C0_SLAVE)) {
		/* Clear DMA interrupt for the channel */
		Chip_DMA_ClearActiveIntAChannel(LPC_DMA, DMAREQ_I2C0_SLAVE);

		/* Handle errors if needed */
		if (errors & (1 << DMAREQ_I2C0_SLAVE)) {
			/* DMA error, channel needs to be reset */
		}

		/* I2C transfer is done and I2C will NACK next byte */
		/* Optionally, a new DMA descriptor can be queued here to continue the
		   DMA transfer. The I2C data callbacks will no longer be called after
		   DMA is started. */
	}
}

/**
 * @brief	Handle I2C1 interrupt by calling I2CM interrupt transfer handler
 * @return	Nothing
 */
void I2C0_IRQHandler(void)
{
	uint32_t state = Chip_I2C_GetPendingInt(LPC_I2C0);

	/* Error handling */
	if (state & (I2C_INTENSET_MSTRARBLOSS | I2C_INTENSET_MSTSTSTPERR)) {
		Chip_I2CM_ClearStatus(LPC_I2C0, I2C_STAT_MSTRARBLOSS | I2C_STAT_MSTSTSTPERR);
	}

	/* Call I2CM ISR function with the I2C device and transfer rec */
	if (state & I2C_INTENSET_MSTPENDING) {
		Chip_I2CM_XferHandler(LPC_I2C0, &i2cmXferRec);
	}

	/* I2C slave related interrupt */
	while (state & (I2C_INTENSET_SLVPENDING | I2C_INTENSET_SLVDESEL)) {
		Chip_I2CS_XferHandler(LPC_I2C0, &i2csCallBacks);

		/* Update state */
		state = Chip_I2C_GetPendingInt(LPC_I2C0);
	}
}

/**
 * @brief	Main routine for I2C example
 * @return	Function should not exit
 */
int main(void)
{
	int loop = 1;	/* Used to fix the unreachable statement warning */

	int i;
	uint32_t seed = 1;

	/* Generic Initialization */
	SystemCoreClockUpdate();
	Board_Init();

	/* Clear activity LED */
	Board_LED_Set(0, false);

	/* Setup I2C pin muxing */
	Init_I2C_PinMux();

	/* Enable I2C clock and reset I2C peripheral */
	Chip_I2C_Init(LPC_I2C0);

	/* DMA initialization - enable DMA clocking and reset DMA if needed */
	Chip_DMA_Init(LPC_DMA);

	/* Enable DMA controller and use driver provided DMA table for current descriptors */
	Chip_DMA_Enable(LPC_DMA);
	Chip_DMA_SetSRAMBase(LPC_DMA, DMA_ADDR(Chip_DMA_Table));

	/* Setup I2C, master, and slave */
	setupI2CMaster();
	setupI2CSlave();

	/* Setup DMA controller for I2C slave send and receive channels */
	setupDMAForI2CS();

	/* Enable the interrupt for the I2C */
	NVIC_EnableIRQ(I2C0_IRQn);

	/* Enable the DMA IRQ */
	NVIC_EnableIRQ(DMA_IRQn);

	DEBUGOUT("I2C slave example with DMA\r\n");

	/* Master will send and receive data and then compare results, slave
	   will loop back data send to it.	*/
	while (loop) {
		/* Setup some data */
		seed = fillWorkBuff(txMBuff, seed, SENDSIZE);
		memset(SBuff, 0x0, SENDSIZE);
		memset(rxMBuff, 0x80, SENDSIZE);

		/* Send data to slave */
		SetupXferRecAndExecute(SLVADD, txMBuff, SENDSIZE, rxMBuff, 0);

		/* Get looped data back from slave */
		SetupXferRecAndExecute(SLVADD, txMBuff, 0, rxMBuff, SENDSIZE);

		/* Compare data */
		if (compFail(txMBuff, SBuff, SENDSIZE) == true) {
			DEBUGOUT("\r\nI2C master data compare error to slave\r\n");
		}
		else if (compFail(SBuff, rxMBuff, SENDSIZE) == true) {
			DEBUGOUT("\r\nI2C slave data compare error to master slave\r\n");
		}
		else {
			DEBUGSTR("master/slave/master data transfer passed\r\n");
		}

		/* Slow things down a bit */
		for (i = 0; i < 0x80000; i++) {}
	}
	return 0;
}
