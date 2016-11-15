/*
 * @brief I2C interface to DW8904
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

#include <stdlib.h>
#include <string.h>
#include "board.h"

#include "delay.h"
#include "i2c_if.h"

#define I2CM_STATUS_TIMEOUT  0x56

/*****************************************************************************
 * Private types/enumerations/variables
 ****************************************************************************/
#define I2C0_FLEXCOMM   			4
#define LPC_I2C_PORT                LPC_I2C0
#define LPC_I2C_INTHAND             I2C0_IRQHandler
#define LPC_IRQNUM                  I2C0_IRQn
#define I2C_CLK_DIVIDER             2
#define I2C_BITRATE                 400000

static I2CM_XFER_T      i2c_xfer;
static const uint32_t   i2c_spd_fast	= IOCON_FUNC1 | IOCON_DIGITAL_EN | IOCON_FASTI2C_EN;
static const uint32_t   int_list		= I2C_INTENSET_MSTPENDING | I2C_INTENSET_MSTRARBLOSS | I2C_INTENSET_MSTSTSTPERR;

/*****************************************************************************
 * Public types/enumerations/variables
 ****************************************************************************/

/*****************************************************************************
 * Private functions
 ****************************************************************************/
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

	case I2CM_STATUS_TIMEOUT:
		DEBUGOUT((abbr == true) ? " to" : "Timeout\r\n");
		break;

	case I2CM_STATUS_BUSY:
		DEBUGOUT((abbr == true) ? " bs" : "Busy\r\n");
		break;

	default:
		DEBUGOUT(" --");
	}
}

static void WaitForI2cXferComplete(I2CM_XFER_T *xferRecPtr)
{
	while (xferRecPtr->status == I2CM_STATUS_BUSY)
		__WFI();
}

/*****************************************************************************
 * Public functions
 ****************************************************************************/

void i2c_pinmux_init(void)
{
	Chip_Clock_EnablePeriphClock(SYSCON_CLOCK_IOCON);
	Chip_IOCON_PinMuxSet(LPC_IOCON, 0, 25, i2c_spd_fast);
	Chip_IOCON_PinMuxSet(LPC_IOCON, 0, 26, i2c_spd_fast);
	Chip_Clock_DisablePeriphClock(SYSCON_CLOCK_IOCON);
}

void i2c_master_init(void)
{
	Chip_I2C_Init(LPC_I2C_PORT);
	Chip_I2C_SetClockDiv(LPC_I2C_PORT, I2C_CLK_DIVIDER);
	Chip_I2CM_SetBusSpeed(LPC_I2C_PORT, I2C_BITRATE);
	Chip_I2CM_Enable(LPC_I2C_PORT);
}

static volatile uint32_t i2c_tick_ct = 0;
bool i2c_io(I2CM_XFER_T *in)
{
	bool ret_val;

	/* Setup I2C transfer */
	i2c_xfer = *in;
	i2c_tick_ct = 0;

	/* Execute I2C transfer */
	Chip_I2CM_Xfer(LPC_I2C_PORT, &i2c_xfer);
	Chip_I2C_EnableInt(LPC_I2C_PORT, int_list);
	WaitForI2cXferComplete(&i2c_xfer);
	Chip_I2C_DisableInt(LPC_I2C_PORT, int_list);
	in->status = i2c_xfer.status;

	if (i2c_xfer.status == I2CM_STATUS_OK) {
		ret_val = true;
	} else {
		i2c_error(false, i2c_xfer.status);
		ret_val = false;
	}

	return ret_val;
}

bool i2c_get_status(void)				{	return (i2c_xfer.status == I2CM_STATUS_BUSY) ? false : true;	}
void i2c_interrupt_enable(void)			{	NVIC_EnableIRQ(LPC_IRQNUM);			}
void i2c_interrupt_disable(void)		{	NVIC_DisableIRQ(LPC_IRQNUM);		}

void LPC_I2C_INTHAND(void)
{
	uint32_t state = Chip_I2C_GetPendingInt(LPC_I2C_PORT);

	/* Error handling */
	if (state & (I2C_INTENSET_MSTRARBLOSS | I2C_INTENSET_MSTSTSTPERR)) {
		Chip_I2CM_ClearStatus(LPC_I2C_PORT, I2C_STAT_MSTRARBLOSS | I2C_STAT_MSTSTSTPERR);
	}

	/* Call I2CM ISR function with the I2C device and transfer rec */
	if (state & I2C_INTENSET_MSTPENDING) {
		Chip_I2CM_XferHandler(LPC_I2C_PORT, &i2c_xfer);
		if (i2c_xfer.status == I2CM_STATUS_OK) {
			Chip_I2C_DisableInt(LPC_I2C_PORT, I2C_INTENSET_MSTPENDING);
		} else {
			if (i2c_tick_ct++ > 200) {
				i2c_xfer.status = I2CM_STATUS_TIMEOUT;
				Chip_I2C_DisableInt(LPC_I2C_PORT, I2C_INTENSET_MSTPENDING);
			}
		}
	}
}
