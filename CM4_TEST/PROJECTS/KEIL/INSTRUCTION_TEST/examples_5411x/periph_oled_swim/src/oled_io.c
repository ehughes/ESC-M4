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

#define SPI0_FLEXCOMM				5				// SPI0 associated with FLEXCOMM5
#define SPI_SSEL					2
#define SPI_CLOCK					4000000

typedef struct {
	uint8_t		port;
	uint8_t		pin;
	uint32_t	modefunc;
	bool		init_state;
} SPI_GPIO_T;

static const SPI_GPIO_T spi_io[] = {
	{	1,		1,		(IOCON_FUNC4 | IOCON_MODE_PULLUP | IOCON_DIGITAL_EN),	true	},		//	SPI SSEL
	{	0,		19,		(IOCON_FUNC1 | IOCON_MODE_PULLUP | IOCON_DIGITAL_EN),	false	},		//	SPI SCK
	{	0,		20,		(IOCON_FUNC1 | IOCON_MODE_PULLUP | IOCON_DIGITAL_EN),	false	},		//	SPI MOSI
	{	0,		18,		(IOCON_FUNC1 | IOCON_MODE_PULLUP | IOCON_DIGITAL_EN),	false	},		//	SPI MOSI (not used)
};
static const uint32_t spi_io_ct = sizeof(spi_io) / sizeof(SPI_GPIO_T);

static const SPI_GPIO_T spi_ctrl[] = {
	{	1,		15,		(IOCON_FUNC0 | IOCON_MODE_PULLUP | IOCON_DIGITAL_EN),	true	},		//	OLED DATA/CMD
	{	1,		14,		(IOCON_FUNC0 | IOCON_MODE_PULLUP | IOCON_DIGITAL_EN),	true	},		//	OLED nRESET
	{	1,		12,		(IOCON_FUNC0 | IOCON_MODE_PULLUP | IOCON_DIGITAL_EN),	false	},		//	OLED VPP control
};
static const uint32_t spi_ctrl_ct = sizeof(spi_ctrl) / sizeof(SPI_GPIO_T);

static uint32_t ctl;

static void init_pinmux(void)
{
	uint32_t i;

	for (i=0; i<spi_io_ct; i++) {
		Chip_IOCON_PinMuxSet(LPC_IOCON, spi_io[i].port, spi_io[i].pin, spi_io[i].modefunc);
	}
	for (i=0; i<spi_ctrl_ct; i++) {
		Chip_IOCON_PinMuxSet(LPC_IOCON, spi_ctrl[i].port, spi_ctrl[i].pin, spi_ctrl[i].modefunc);
	}
}

static void init_gpio(void)
{
	uint32_t i;

	for (i=0; i<spi_ctrl_ct; i++) {
		Chip_GPIO_SetPinDIROutput(LPC_GPIO, spi_ctrl[i].port, spi_ctrl[i].pin);
		Chip_GPIO_SetPinState(LPC_GPIO, spi_ctrl[i].port, spi_ctrl[i].pin, spi_ctrl[i].init_state);
	}
}

static void init_spi(void)
{
	int					ret;
	SPI_CFGSETUP_T		spiSetup;
	SPIM_DELAY_CONFIG_T	masterDelay;

	ret = Chip_SPI_Init(LPC_SPI0);
	LPC_ASSERT(!ret, __FILE__, __LINE__);

	Chip_SPI_Enable(LPC_SPI0);
	spiSetup.master = 1;
	spiSetup.lsbFirst = 0;
	spiSetup.mode = SPI_CLOCK_MODE0;
	Chip_SPI_ConfigureSPI(LPC_SPI0, &spiSetup);

	Chip_SPI_SetCSPolLow(LPC_SPI0, SPI_SSEL);
	Chip_SPIM_SetClockRate(LPC_SPI0, SPI_CLOCK);

	masterDelay.PreDelay = 0;
	masterDelay.PostDelay = 0;
	masterDelay.FrameDelay = 0;
	masterDelay.TransferDelay = 0;
	Chip_SPIM_DelayConfig(LPC_SPI0, &masterDelay);

	ctl = SPI_TXDAT_ASSERTNUM_SSEL(SPI_SSEL);
	ctl |= SPI_TXDAT_FLEN(7);
	ctl |= SPI_TXDAT_EOT | SPI_TXDAT_EOF | SPI_TXDAT_RXIGNORE;
}

void OLED_IO_hw_init(void)
{
	init_pinmux();
	init_gpio();
	init_spi();
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
	Chip_SPI_WriteFIFO(LPC_SPI0, (uint32_t)(ctl<<16|data));
	while ((Chip_SPI_GetStatus(LPC_SPI0) & SPI_STAT_MSTIDLE) == 0) ;
}
