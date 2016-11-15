/*
 * @brief SPI master and slave example
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

/*****************************************************************************
 * Private types/enumerations/variables
 ****************************************************************************/
#define SPI0_FLEXCOMM   				5      											/* SPI0 (master) is FLEXCOMM 5	*/
#define LPC_SPIMASTERPORT               LPC_SPI0										/* Master SPI port				*/
#define SPIMASTERIRQHANDLER             SPI0_IRQHandler									/* Master IRQ handler			*/
#define LPC_SPIMASTERIRQNUM             SPI0_IRQn										/* Master IRQ number			*/
#define SPI_MASTER_SSEL                 2												/* Master select line			*/

#define SPI1_FLEXCOMM   				3      											/* SPI1 (slave)  is FLEXCOMM 3	*/
#define LPC_SPISLAVEPORT                LPC_SPI1										/* Slave SPI port				*/
#define SPISLAVEIRQHANDLER              SPI1_IRQHandler									/* Slave IRQ handler			*/
#define LPC_SPISLAVEIRQNUM              SPI1_IRQn										/* Slave IRQ number				*/
#define SPI_SLAVE_SSEL                  0												/* Slave select line			*/

#define LPCMASTERCLOCKRATE				4000000											/* SPI clock rate				*/

#define BUFFER_CT						16												/* Buffer RX / TX count			*/
#define	SPI_IO_CT						8												/* I/O SPI transfer count		*/

/*****************************************************************************
 * Public types/enumerations/variables
 ****************************************************************************/
uint16_t		masterRXBuffer16[BUFFER_CT], masterTXBuffer16[BUFFER_CT];				/* Master structures */
SPIM_XFER_T		spiMasterXfer;
uint32_t		master_err_tx, master_err_rx;
volatile bool	mEnd;

uint16_t		slaveRXBuffer16[BUFFER_CT], slaveTXBuffer16[BUFFER_CT];					/* Slave structures */
SPIS_XFER_T		spiSlaveXfer;
uint32_t 		slave_err_tx, slave_err_rx;
volatile bool	sEnd;

/*****************************************************************************
 * Private functions
 ****************************************************************************/
static int SPIM_eventCB(LPC_SPI_T *pSPI, SPIM_EVENT_T evt, SPIM_XFER_T *xfer)
{
	switch (evt) {
		case SPIM_EVENT_ERRORTX:
			master_err_tx += 1;							/* Bump errors */
			break;
		
		case SPIM_EVENT_ERRORRX:
			master_err_rx += 1;							/* Bump errors */
			break;

		case SPIM_EVENT_ERROR:							/* Transfer errors */
		case SPIM_EVENT_DONE:							/* Transfer completed without errors */
			mEnd = true;								/* Transfer done with or without errors */
			break;										/* break here */

		case SPIM_EVENT_WAIT:							/* Waiting for transfer to be completed */
			break;										/* break */

		default:										/* Control should never reach here */
			break;
	}
	return 0;
}

static int SPIS_eventCB(LPC_SPI_T *pSPI, SPIS_EVENT_T evt, SPIS_XFER_T *xfer)
{
	switch (evt) {
		case SPIS_EVENT_SASSERT:						/* SSEL Asserted - Transfer started */
			break;

		case SPIS_EVENT_DONE:							/* Handling of buffers in TX and RX completed */
			break;

		case SPIS_EVENT_THRESHOLD:						/* Given threshold reached */
			break;

		case SPIS_EVENT_ERRORTX:						/* tx error */
			slave_err_tx+=1;							/* bump slave error counter */
			break;

		case SPIS_EVENT_ERRORRX:						/* rx error */
			slave_err_rx+=1;							/* bump slave error counter */
			break;

		case SPIS_EVENT_SDEASSERT:						/* SSEL Deasserted - Transfer completed */
			sEnd = true;
			break;

		default:										/* Control should never reach here */
			break;
	}
	return 0;
}

/* Initializes pin muxing for SPI1 interface - note that SystemInit() may
   already setup your pin muxing at system startup */
static void Init_SPI_PinMux(void)
{
	/* Connect the SPI1 signals to port pins */
	Chip_IOCON_PinMuxSet(LPC_IOCON, 0, 11, (IOCON_FUNC1 | IOCON_MODE_PULLUP | IOCON_DIGITAL_EN));	/* SPI1_SCK */
	Chip_IOCON_PinMuxSet(LPC_IOCON, 0, 12, (IOCON_FUNC1 | IOCON_MODE_PULLUP | IOCON_DIGITAL_EN));	/* SPI1_MOSI */
	Chip_IOCON_PinMuxSet(LPC_IOCON, 0, 13, (IOCON_FUNC1 | IOCON_MODE_PULLUP | IOCON_DIGITAL_EN));	/* SPI1_MISO */
	Chip_IOCON_PinMuxSet(LPC_IOCON, 0, 14, (IOCON_FUNC1 | IOCON_MODE_PULLUP | IOCON_DIGITAL_EN));	/* SPI1_SSEL0 */

	/* Connect the SPI0 signals to port pins */
	Chip_IOCON_PinMuxSet(LPC_IOCON, 1, 1,   (IOCON_FUNC4 | IOCON_MODE_PULLUP | IOCON_DIGITAL_EN));	/* SPI0_SSEL2 */
	Chip_IOCON_PinMuxSet(LPC_IOCON, 0, 19,  (IOCON_FUNC1 | IOCON_MODE_PULLUP | IOCON_DIGITAL_EN));	/* SPI0_SCK */
	Chip_IOCON_PinMuxSet(LPC_IOCON, 0, 20,  (IOCON_FUNC1 | IOCON_MODE_PULLUP | IOCON_DIGITAL_EN));	/* SPI0_MOSI */
	Chip_IOCON_PinMuxSet(LPC_IOCON, 0, 18,  (IOCON_FUNC1 | IOCON_MODE_PULLUP | IOCON_DIGITAL_EN));	/* SPI0_MISO */
}

/* Initialize buffers for slave and master */
static uint16_t txBufferInit(uint16_t seed)
{
	int i;

	for (i=0; i<BUFFER_CT; i++) {
		/* Seed data for transmit buffers */
		masterTXBuffer16[i] = seed;
		slaveTXBuffer16[i] = ~seed;
		seed+=1;
	}

	return seed;
}

static void rxBufferInit(void)
{
	int i;
	for (i=0; i<BUFFER_CT; i++) {
		slaveRXBuffer16[i] = masterRXBuffer16[i] = 0xaaaa;
	}
}

void showData(char *reg, uint16_t *dat)
{
	int i, j;

	DEBUGOUT("%s:\r\n", reg);
	for (i = 0; i < 2; i++) {
		for (j = 0; j < 8; j++) {
			DEBUGOUT("0x%04x ", *dat++);
		}
		DEBUGSTR("\r\n");
	}
}

/* Setup master controller */
static void setupMaster(void)
{
	int ret;
	SPI_CFGSETUP_T spiSetup;
	SPIM_DELAY_CONFIG_T masterDelay;

	/* Initialize SPI controller */
	ret = Chip_SPI_Init(LPC_SPIMASTERPORT);
	LPC_ASSERT(!ret, __FILE__, __LINE__);

	/* Call to initialize first SPI controller for mode0, master mode, MSB first */
	Chip_SPI_Enable(LPC_SPIMASTERPORT);
	spiSetup.master = 1;
	spiSetup.lsbFirst = 0;
	spiSetup.mode = SPI_CLOCK_MODE0;
	Chip_SPI_ConfigureSPI(LPC_SPIMASTERPORT, &spiSetup);

	/* Setup master controller SSELx for active low select */
	Chip_SPI_SetCSPolLow(LPC_SPIMASTERPORT, SPI_MASTER_SSEL);

	/* Setup master clock rate, slave clock doesn't need to be setup */
	Chip_SPIM_SetClockRate(LPC_SPIMASTERPORT, LPCMASTERCLOCKRATE);

	/* Setup master delay (all chip selects) */
	masterDelay.PreDelay = 0x01;
	masterDelay.PostDelay = 0x01;
	masterDelay.FrameDelay = 0x02;
	masterDelay.TransferDelay = 0x01;
	Chip_SPIM_DelayConfig(LPC_SPIMASTERPORT, &masterDelay);

	/* Setup master transfer callbacks in the transfer descriptor */
	spiMasterXfer.eventCB = SPIM_eventCB;
}

/* Setup slave controller */
static void setupSlave(void)
{
	int ret;
	SPI_CFGSETUP_T spiSetup;

	/* Initialize SPI controllers */
	ret = Chip_SPI_Init(LPC_SPISLAVEPORT);
	LPC_ASSERT(!ret, __FILE__, __LINE__);

	/* Call to initialize second SPI controller for mode0, slave mode, MSB first */
	Chip_SPI_Enable(LPC_SPISLAVEPORT);
	spiSetup.master = 0;
	spiSetup.lsbFirst = 0;
	spiSetup.mode = SPI_CLOCK_MODE0;
	Chip_SPI_ConfigureSPI(LPC_SPISLAVEPORT, &spiSetup);

	/* Setup slave controller SSELx for active low select */
	Chip_SPI_SetCSPolLow(LPC_SPISLAVEPORT, SPI_SLAVE_SSEL);

	/* Setup slave transfer callbacks in the transfer descriptor */
	spiSlaveXfer.eventCB = SPIS_eventCB;
	
	/* Low level slave initialization */
	Chip_SPIS_Init(LPC_SPISLAVEPORT);
}

/*****************************************************************************
 * Public functions
 ****************************************************************************/

/**
 * @brief	SPI0 interrupt handler sub-routine (master)
 * @return	Nothing
 */
void SPIMASTERIRQHANDLER(void)
{
	Board_TestIO_Set(0,true);
	Chip_SPIM_XferHandler(LPC_SPIMASTERPORT, &spiMasterXfer);
	Board_TestIO_Set(0,false);
}

/**
 * @brief	SPI1 interrupt handler sub-routine (slave)
 * @return	Nothing
 */
void SPISLAVEIRQHANDLER(void)
{
	Board_TestIO_Set(1,true);
	Chip_SPIS_XferHandler(LPC_SPISLAVEPORT, &spiSlaveXfer);
	Board_TestIO_Set(1,false);
}

/**
 * @brief	Main routine for SPI example
 * @return	Nothing
 */
int main(void)
{
	uint16_t count = 10;
	uint16_t seed = 0x4100;

	SystemCoreClockUpdate();
	Board_Init();
	Board_LED_RGB_Set(LED_RGB_RED);
	
	/* SPI initialization */
	Init_SPI_PinMux();

	/* Initialize stopwatch driver so some event times can be measured */

	/* Setup SPI controllers */
	setupMaster();
	setupSlave();
	
	DEBUGOUT("SPI master/slave combined example (interrupt version)\r\n");
	DEBUGOUT("Processor Speed: %dMHz\r\n",SystemCoreClock/1000000);
	DEBUGOUT("Build date: %s / time: %s\r\n",__DATE__, __TIME__);
	DEBUGOUT("  Master device: 0x%p\r\n", LPC_SPIMASTERPORT);
	DEBUGOUT("   Slave device: 0x%p\r\n\r\n", LPC_SPISLAVEPORT);

	/* Enable SPI controller interrupts */
	NVIC_EnableIRQ(LPC_SPIMASTERIRQNUM);
	NVIC_EnableIRQ(LPC_SPISLAVEIRQNUM);
	
	while (count--) {

		/* Setup some data for transmit from master to slave and slave to master */
		seed = txBufferInit(seed);
		rxBufferInit();
		
		/* Set up slave transfer block */
		spiSlaveXfer.txData = slaveTXBuffer16;										/* set slave transmit pointer */
		spiSlaveXfer.txCount = SPI_IO_CT;											/* set slave transmit frame count */
		spiSlaveXfer.rxData = slaveRXBuffer16;										/* set slave receive pointer */
		spiSlaveXfer.rxCount = SPI_IO_CT;											/* set slave receive frame count */
		spiSlaveXfer.dataWidth = 16;												/* Each data is 16-bits */
		spiSlaveXfer.sselNum = SPI_SLAVE_SSEL;										/* set SPI select */
		spiSlaveXfer.txIndex = 0;													/* clear the transmit buffer index */
		spiSlaveXfer.rxIndex = 0;													/* clear the receive buffer index */

		/* Set up master transfer block */
		spiMasterXfer.txData = masterTXBuffer16;									/* set master transmit pointer */
		spiMasterXfer.txCount = SPI_IO_CT;                                          /* set master transmit frame count */
		spiMasterXfer.rxData = masterRXBuffer16;                                    /* set master receive pointer */
		spiMasterXfer.rxCount = SPI_IO_CT;                                          /* set master receive frame count */
		spiMasterXfer.dataWidth = 16;												/* Each data is 16-bits */
		spiMasterXfer.sselNum = SPI_MASTER_SSEL;									/* set SPI select */
		spiMasterXfer.txIndex = 0;													/* clear the transmit buffer index */
		spiMasterXfer.rxIndex = 0;													/* clear the receive buffer index */

		/*
		* There are three SPI master options:
		* 1) SPIM_XFER_OPT_FRAME_DLY:		use frame delay. If not used, frames are sent back-to-back without delay.
		* 2) SPIM_XFER_OPT_FRAME_ASSERT:	SSEL is asserted / de-asserted for each frame. If not used, SSEL is asserted for all frames.
		* 3) SPIM_XFER_OPT_DMA:				Configure SPI to use DMA.
		*/
		spiMasterXfer.option = SPIM_XFER_OPT_FRAME_DLY;

		mEnd = false;
		sEnd = false;
		master_err_tx = slave_err_tx = 0;
		master_err_rx = slave_err_rx = 0;

		Chip_SPIS_LoadFIFO(LPC_SPISLAVEPORT, &spiSlaveXfer);
		Chip_SPIS_EnableInts(LPC_SPISLAVEPORT);

		/* Start master transfer */
		DEBUGOUT("Starting transfer SPI0 to SPI1...");
		Chip_SPIM_Xfer(LPC_SPIMASTERPORT, &spiMasterXfer);

		/* Sleep until transfers are complete */
		while ((mEnd == false) || (sEnd == false)) {
			__WFI();
		}
		DEBUGOUT("transfer complete\r\n");
		Chip_SPIS_DisableInts(LPC_SPISLAVEPORT);
		
		/* Toggle LED */
		Board_LED_Toggle(0);

		/* Display some information about the transfer */
		DEBUGOUT("Master errors:%d/%d Slave errors:%d/%d \r\n", master_err_tx, master_err_rx, slave_err_tx, slave_err_rx);
		DEBUGOUT("Slave SSEL count:%d SSEL ID:%d \r\n", spiSlaveXfer.ss_count, spiSlaveXfer.sselNum);

		/* Show data */
		showData("Master TX data", masterTXBuffer16);
		showData("Master RX data", masterRXBuffer16);
		showData("Slave  TX data", slaveTXBuffer16);
		showData("Slave  RX data", slaveRXBuffer16);
		DEBUGOUT("\r\n");
	}

	/* DeInitialize SPI peripherals, never called in this example */
	Chip_SPI_DeInit(LPC_SPIMASTERPORT);
	Chip_SPI_DeInit(LPC_SPISLAVEPORT);

	DEBUGOUT("Demo complete.\r\n");

	return 0;
}
