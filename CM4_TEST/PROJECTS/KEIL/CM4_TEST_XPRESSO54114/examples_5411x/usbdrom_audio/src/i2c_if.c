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

//static I2CM_XFER_T      i2c_xfer;
//static const uint32_t   i2c_spd_std		= IOCON_FUNC1 | IOCON_DIGITAL_EN;
static const uint32_t   i2c_spd_fast	= IOCON_FUNC1 | IOCON_DIGITAL_EN | IOCON_FASTI2C_EN;
//static const uint32_t   int_list		= I2C_INTENSET_MSTPENDING | I2C_INTENSET_MSTRARBLOSS | I2C_INTENSET_MSTSTSTPERR;

/*****************************************************************************
 * Public types/enumerations/variables
 ****************************************************************************/

/*****************************************************************************
 * Private functions
 ****************************************************************************/
static void i2c_error(uint32_t i2c_error)
{
	printf("I2C error: ");

	switch (i2c_error) {
	case I2CM_STATUS_NAK_ADR:
		printf("NAK address\n");
		break;

	case I2CM_STATUS_BUS_ERROR:
		printf("Bus error\n");
		break;

	case I2CM_STATUS_NAK_DAT:
		printf("NAK data\n");
		break;

	case I2CM_STATUS_ARBLOST:
		printf("Arbitration lost\n");
		break;

	case I2CM_STATUS_TIMEOUT:
		printf("Timeout\n");
		break;

	case I2CM_STATUS_BUSY:
		printf("Busy\n");
		break;

	default:
	case I2CM_STATUS_ERROR:
		printf("Unknown error\n");
		break;
	}
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

static void xfer(LPC_I2C_T *pI2C, I2CM_XFER_T *xfer)
{
	/* start transfer */
	Chip_I2CM_Xfer(pI2C, xfer);

	while (xfer->status == I2CM_STATUS_BUSY) {
		while (Chip_I2CM_IsMasterPending(pI2C) == 0) {
			if (Delay_timeout() == true) {
				break;
			}
		}
		Chip_I2CM_XferHandler(pI2C, xfer);
	}
}

static volatile bool flag = false;
bool i2c_io(I2CM_XFER_T *in)
{
	bool ret_val;

	if (flag == true) {
		printf("concurrent call to I2C driver\n");
		return false;
	} else {
		flag = true;
	}

#if defined(LOWPOWEROPERATION)
	Chip_I2CM_Enable(LPC_I2C_PORT);
#endif
	Delay_nobl(20);
	xfer(LPC_I2C_PORT, in);
#if defined(LOWPOWEROPERATION)
	Chip_I2CM_Disable(LPC_I2C_PORT);
#endif

	if (in->status == I2CM_STATUS_OK) {
		ret_val = true;
	} else {
		i2c_error(in->status);
		ret_val = false;
	}
	flag = false;
	return ret_val;
}
