/*
 * @brief I2CM bus master example using interrupt mode
 *
 * @note
 * Copyright(C) NXP Semiconductors, 2014
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

#include <stdlib.h>
#include <string.h>
#include "board.h"

/** @defgroup PERIPH_I2CM_INT_5411X I2CM bus master example using interrupts
 * @ingroup EXAMPLES_PERIPH_5411X
 * @include "periph_i2cm_int\readme.txt"
 */

/**
 * @}
 */

/*****************************************************************************
 * Private types/enumerations/variables
 ****************************************************************************/
#define I2C0_FLEXCOMM   4

static I2CM_XFER_T  *i2cmXferRec;
#define I2C_CLK_DIVIDER		2
#define I2C_BITRATE			400000

#if defined(BOARD_NXP_LPCXPRESSO_54114)
/** 7-bit I2C addresses of 6-axis sensor on sensor board */
#define I2C_ADDR_7BIT		0x10
#define LPC_I2C_PORT		LPC_I2C0
#define LPC_I2C_INTHAND		I2C0_IRQHandler
#define LPC_IRQNUM			I2C0_IRQn
#endif

static uint8_t buffer[2][256];

static const char menu[] =
	"\x1B[0;37m\r\n"			// reset color
	"**************** I2C Demo Menu ****************\r\n"
	"\t0: Exit Demo\r\n"
	"\t1: Select I2C peripheral [\x1B[1;32mI2C%d\x1B[0;37m]\r\n"
	"\t2: Toggle mode POLLING/INTERRUPT/DMA [\x1B[1;32m%s\x1B[0;37m]\r\n"
	"\t3: Probe for Slave devices\r\n"
	"\t4: Read slave data\r\n"
	"\t5: Write slave data\r\n"
	"\t6: Write/Read slave data\r\n";

static uint32_t i2c_mode = 0;

/*****************************************************************************
 * Public types/enumerations/variables
 ****************************************************************************/

/*****************************************************************************
 * Private functions
 ****************************************************************************/
static void ansi_clr_screen(void)
{
	DEBUGOUT("\x1B[2J");														// clear screen
	DEBUGOUT("\x1B[0m");														// color mode reset
	DEBUGOUT("\x1B[1;1H");														// set position to 1,1
}

/* Initializes pin muxing for I2C interface - note that SystemInit() may
   already setup your pin muxing at system startup */
static void Init_I2C_PinMux(void)
{
	Chip_IOCON_PinMuxSet(LPC_IOCON, 0, 25, (IOCON_FUNC1 | IOCON_FASTI2C_EN | IOCON_DIGITAL_EN));
	Chip_IOCON_PinMuxSet(LPC_IOCON, 0, 26, (IOCON_FUNC1 | IOCON_FASTI2C_EN | IOCON_DIGITAL_EN));
}

/* Setup I2C */
static void setupI2CMaster(void)
{
	/* Enable pin muxing */
	Init_I2C_PinMux();

	/* Enable I2C clock and reset I2C peripheral */
	Chip_I2C_Init(LPC_I2C_PORT);

	/* Setup I2CM transfer rate */
	Chip_I2CM_SetBusSpeed(LPC_I2C_PORT, I2C_BITRATE);

	/* Enable I2C master interface */
	Chip_I2CM_Enable(LPC_I2C_PORT);
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

static void i2c_error(bool abbr, uint32_t i2c_error)
{
	if (abbr == false) {
		DEBUGOUT("I2C error: ");
	}
	switch (i2c_error) {
	case I2CM_STATUS_ERROR:
		DEBUGOUT((abbr == true) ? " er" : "Unknown error\r\n");
		break;

	case I2CM_STATUS_NAK_ADR:
		DEBUGOUT((abbr == true) ? " na" : "NAK address\r\n");
		break;

	case I2CM_STATUS_BUS_ERROR:
		DEBUGOUT((abbr == true) ? " be" : "Bus error\r\n");
		break;

	case I2CM_STATUS_NAK_DAT:
		DEBUGOUT((abbr == true) ? " nd" : "NAK data\r\n");
		break;

	case I2CM_STATUS_ARBLOST:
		DEBUGOUT((abbr == true) ? " al" : "Arbitration lost\r\n");
		break;

	case I2CM_STATUS_BUSY:
		DEBUGOUT((abbr == true) ? " bs" : "Busy\r\n");
		break;

	default:
		DEBUGOUT(" --");
	}
}


/* I2C interrupt mode transfers */
static void i2c_xfer_int(I2CM_XFER_T *xfer)
{
	i2cmXferRec = xfer;
	Chip_I2CM_Xfer(LPC_I2C_PORT, xfer);
	/* Enable Master Interrupts */
	Chip_I2C_EnableInt(LPC_I2C_PORT, I2C_INTENSET_MSTPENDING | I2C_INTENSET_MSTRARBLOSS | I2C_INTENSET_MSTSTSTPERR);
	/* Wait for transfer completion */
	WaitForI2cXferComplete(xfer);
	/* Disable all Interrupts */
	Chip_I2C_DisableInt(LPC_I2C_PORT, I2C_INTENSET_MSTPENDING | I2C_INTENSET_MSTRARBLOSS | I2C_INTENSET_MSTSTSTPERR);

	if (xfer->status != I2CM_STATUS_OK) {
		i2c_error(false, xfer->status);
	}
}

/* I2C Polled mode transfers */
static void i2c_xfer_poll(I2CM_XFER_T *i2cmXferRec)
{
	Chip_I2CM_XferBlocking(LPC_I2C_PORT, i2cmXferRec);

	if (i2cmXferRec->status != I2CM_STATUS_OK) {
		i2c_error(false, i2cmXferRec->status);
	}
}

/* I2C DMA Transfers */
static void i2c_xfer_dma(I2CM_XFER_T *i2cmXferRec)
{
	i2c_xfer_poll(i2cmXferRec);
}

/* Get an integer input from UART */
static int con_get_input(const char *str)
{
	bool input_valid = false;
	int x;
	char ch[16], *ptr;
	int i = 0;

	memset(ch, 0, 16);
	while (input_valid == false) {
		DEBUGOUT("%s", str);
		while (1) {
			x = DEBUGIN();
			if (x == EOF)	continue;
			if (x == '\n')	continue;

			if (i >= sizeof(ch) - 2) {
				break;
			}
			if (x == '\r') {
				if (i == 0) {
					continue;
				} else {
					DEBUGOUT("\r\n");
					break;
				}
			}
			
			if (x == '\b') {
				if (i) {
					DEBUGOUT("\x1B[1D \x1B[1D");
					i--;
				}
				continue;
			}
			DEBUGOUT("%c", x);
			ch[i++] = x;
		}
		i = strtol(ch, &ptr, 0);
		if (*ptr) {
			i = 0;
			DEBUGOUT("Invalid input. Retry!\r\n");
			memset(ch, 0, 16);
			continue;
		}
		input_valid = true;
	}
	return i;
}


/* Function that probes all available slaves connected to an I2C bus */
static void i2c_probe_slaves()
{
	int i;
	uint8_t ch[2];
	I2CM_XFER_T xfer;

	DEBUGOUT("Probing available I2C devices...\r\n");
	DEBUGOUT("\r\n     00 01 02 03 04 05 06 07 08 09 0A 0B 0C 0D 0E 0F");
	DEBUGOUT("\r\n====================================================");
	for (i = 0; i <= 0x7F; i++) {
		if (!(i & 0x0F)) {
			DEBUGOUT("\r\n%02X  ", i >> 4);
		}
		if ((i <= 7) || (i > 0x78)) {
			DEBUGOUT("   ");
			continue;
		}

		xfer.rxBuff = ch;
		xfer.rxSz = 2;
		xfer.slaveAddr = i;
		xfer.txBuff = 0;
		xfer.txSz = 0;
		xfer.status = 0;
		Chip_I2CM_XferBlocking(LPC_I2C_PORT, &xfer);
		if ( xfer.status == I2CM_STATUS_OK || xfer.status == I2CM_STATUS_NAK_DAT) {
			DEBUGOUT(" %02X", i);
		}
		else {
			i2c_error(true, xfer.status);
		}
	}
	DEBUGOUT("\r\n");
}

static int i2c_menu(void)
{
	static const char *mode_str[] = {"POLLING", "INTERRUPT", "DMA"};
	DEBUGOUT(menu, 0, mode_str[i2c_mode]);
	return con_get_input("Select an option [0 - 6]: ");
}

static void i2c_rw_input(I2CM_XFER_T *xfer, int ops)
{
	int tmp, i;

	tmp = con_get_input("Enter 7-Bit Slave address: ");
	tmp &= 0xFF;
	xfer->slaveAddr = tmp;
	xfer->rxBuff = 0;
	xfer->txBuff = 0;
	xfer->txSz = 0;
	xfer->rxSz = 0;

	if (ops & 1) {
		tmp = con_get_input("Enter number of bytes to read: ");
		tmp &= 0xFF;
		xfer->rxSz = tmp;
		xfer->rxBuff = buffer[1];
	}

	if (ops & 2) {
		tmp = con_get_input("Enter number of bytes to write: ");
		tmp &= 0xFF;
		for (i = 0; i < tmp; i++) {
			DEBUGOUT("%d:", i + 1);
			buffer[0][i] = con_get_input("Enter Data: ");
		}
		xfer->txSz = tmp;
		xfer->txBuff = buffer[0];
	}
}

/* Print data to console */
static void con_print_data(const uint8_t *dat, int sz)
{
	int i;
	if (!sz) {
		return;
	}
	for (i = 0; i < sz; i++) {
		if (!(i & 0xF)) {
			DEBUGOUT("\r\n%02X: ", i);
		}
		DEBUGOUT(" %02X", dat[i]);
	}
	DEBUGOUT("\r\n");
}

/*****************************************************************************
 * Public functions
 ****************************************************************************/

/**
 * @brief	Handle I2C1 interrupt by calling I2CM interrupt transfer handler
 * @return	Nothing
 */
void LPC_I2C_INTHAND(void)
{
	uint32_t state = Chip_I2C_GetPendingInt(LPC_I2C_PORT);

	/* Error handling */
	if (state & (I2C_INTENSET_MSTRARBLOSS | I2C_INTENSET_MSTSTSTPERR)) {
		Chip_I2CM_ClearStatus(LPC_I2C_PORT, I2C_STAT_MSTRARBLOSS | I2C_STAT_MSTSTSTPERR);
	}

	/* Call I2CM ISR function with the I2C device and transfer rec */
	if (state & I2C_INTENSET_MSTPENDING) {
		Chip_I2CM_XferHandler(LPC_I2C_PORT, i2cmXferRec);
	}
}

/**
 * @brief	Main program body
 * @return	int
 */
int main(void)
{
	int tmp_tx, tmp_rx, tmp_in;
	int xflag = 0;
	I2CM_XFER_T xfer;
	void (* const i2c_xfer_ops[])(I2CM_XFER_T *) = {
		i2c_xfer_poll,
		i2c_xfer_int,
		i2c_xfer_dma
	};
	void (*i2c_xfer_fn)(I2CM_XFER_T *) = i2c_xfer_ops[0];

	SystemCoreClockUpdate();
	Board_Init();
	setupI2CMaster();

	ansi_clr_screen();
	while (!xflag) {
		switch (i2c_menu()) {
		case 0:
			xflag = 1;
			DEBUGOUT("End of I2C Demo! Bye!\r\n");
			break;

		case 1:
			DEBUGOUT("I2C0 Selected!\r\n");
			continue;

		case 2:
			tmp_in = con_get_input("Select Mode [0-POLL, 1-INTERRUPT, 2-DMA]: ");
			DEBUGSTR("\r\n");
			if (tmp_in < 0 || tmp_in > 2)
				break;
			i2c_mode = tmp_in;
			i2c_xfer_fn = i2c_xfer_ops[tmp_in];

			if (tmp_in != 0) {
				/* Enable the interrupt for the I2C */
				NVIC_EnableIRQ(LPC_IRQNUM);
			} else {
				/* Enable the interrupt for the I2C */
				NVIC_DisableIRQ(LPC_IRQNUM);
			}
			break;

		case 3:
			i2c_probe_slaves();
			break;

		case 4:
			i2c_rw_input(&xfer, 1);
			tmp_rx = xfer.rxSz;
			i2c_xfer_fn(&xfer);
			tmp_rx -= xfer.rxSz;

			if (xfer.status == I2CM_STATUS_OK) {
				DEBUGOUT("Read %d bytes from slave 0x%02X.", tmp_rx, xfer.slaveAddr);
				con_print_data(buffer[1], tmp_rx);
			}
			break;

		case 5:
			i2c_rw_input(&xfer, 2);
			tmp_tx = xfer.txSz;
			if (tmp_tx == 0) break;
			i2c_xfer_fn(&xfer);
			tmp_tx -= xfer.txSz;
			if (xfer.status == I2CM_STATUS_OK)
				DEBUGOUT("Wrote %d bytes to slave 0x%02X.\r\n", tmp_tx, xfer.slaveAddr);
			break;

		case 6:
			i2c_rw_input(&xfer, 3);
			tmp_rx = xfer.rxSz, tmp_tx = xfer.txSz;
			if ((tmp_rx == 0) && (tmp_tx == 0)) break;
			i2c_xfer_fn(&xfer);
			tmp_rx -= xfer.rxSz, tmp_tx -= xfer.txSz;
			DEBUGOUT("Master transfer : %s\r\n",
					 xfer.status == I2CM_STATUS_OK ? "success" : "failed");
			DEBUGOUT("Tx:%d / Rx:%d bytes from slave 0x%02X\r\n", tmp_tx, tmp_rx, xfer.slaveAddr);
			con_print_data(buffer[1], tmp_rx);
			break;

		default:
			DEBUGOUT("Input Invalid! Try Again.\r\n");
		}
	}
	Chip_I2C_DeInit(LPC_I2C0);

	return 0;
}
