/*
 * @brief OLED I/O (implementation file)
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
#include "oled_io.h"

typedef struct {
	uint8_t		port;
	uint8_t		pin;
	uint32_t	modefunc;
	bool		init_state;
} SPI_BB_IO_T;

static const SPI_BB_IO_T bb_io[] = {
	{	1,		1,		(IOCON_FUNC0 | IOCON_MODE_PULLUP | IOCON_DIGITAL_EN),	true	},		//	SPI SSEL
	{	0,		19,		(IOCON_FUNC0 | IOCON_MODE_PULLUP | IOCON_DIGITAL_EN),	false	},		//	SPI SCK
	{	0,		20,		(IOCON_FUNC0 | IOCON_MODE_PULLUP | IOCON_DIGITAL_EN),	false	},		//	SPI MOSI
	{	1,		15,		(IOCON_FUNC0 | IOCON_MODE_PULLUP | IOCON_DIGITAL_EN),	true	},		//	OLED DATA/CMD
	{	1,		14,		(IOCON_FUNC0 | IOCON_MODE_PULLUP | IOCON_DIGITAL_EN),	true	},		//	OLED nRESET
	{	1,		12,		(IOCON_FUNC0 | IOCON_MODE_PULLUP | IOCON_DIGITAL_EN),	false	},		//	OLED VPP control
};
static const uint32_t bb_io_ct = sizeof(bb_io) / sizeof(SPI_BB_IO_T);

static void init_pinmux(void)
{
	uint32_t i;

	for (i=0; i<bb_io_ct; i++) {
		Chip_IOCON_PinMuxSet(LPC_IOCON, bb_io[i].port, bb_io[i].pin, bb_io[i].modefunc);
	}
}

static void init_gpio(void)
{
	uint32_t i;

	for (i=0; i<bb_io_ct; i++) {
		Chip_GPIO_SetPinDIROutput(LPC_GPIO, bb_io[i].port, bb_io[i].pin);
		Chip_GPIO_SetPinState(LPC_GPIO, bb_io[i].port, bb_io[i].pin, bb_io[i].init_state);
	}
}

void OLED_IO_hw_init(void)
{
	init_pinmux();
	init_gpio();
}

void OLED_IO_vpp(bool state)
{
	Chip_GPIO_SetPinState(LPC_GPIO, 1, 12, state);
}

void OLED_IO_reset(bool state)
{
	Chip_GPIO_SetPinState(LPC_GPIO, 1, 14, !state);
}

void OLED_IO_cmd(void)
{
	Chip_GPIO_SetPinState(LPC_GPIO, 1, 15, false);
}

void OLED_IO_data(void)
{
	Chip_GPIO_SetPinState(LPC_GPIO, 1, 15, true);
}

void OLED_IO_write(uint8_t data)
{
	uint8_t	bit_ct;

	Chip_GPIO_SetPinState(LPC_GPIO, 1, 1, false);								//	assert chip select
	for (bit_ct=0; bit_ct<8; bit_ct++) {
		Chip_GPIO_SetPinState(LPC_GPIO, 0, 19, false);							//	set clock low
		if (data & 0x80)
			Chip_GPIO_SetPinState(LPC_GPIO, 0, 20, true);						//	output a 1
		else
			Chip_GPIO_SetPinState(LPC_GPIO, 0, 20, false);						//	output a 0

		Chip_GPIO_SetPinState(LPC_GPIO, 0, 19, true);							//	set clock high
		data <<= 1;																//	shift the data up
	}
	Chip_GPIO_SetPinState(LPC_GPIO, 0, 19, false);								//	set clock low
	Chip_GPIO_SetPinState(LPC_GPIO, 1, 1, true);								//	deassert chip select
}
