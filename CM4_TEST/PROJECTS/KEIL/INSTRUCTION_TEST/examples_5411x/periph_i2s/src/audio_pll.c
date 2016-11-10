/*
 * @brief Module to initialize/deinitialize the PLL
 *
 * @note
 * Copyright(C) NXP Semiconductors, 2013
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
#include "wm8904.h"
#include "audio_pll.h"

#define SELR    0
#define SELI    8
#define SELP    31
#define BYPASS  0
#define NDEC    63
#define PDEC    14

/* PLL data for input = 12 MHz */
static const PLL_SETUP_T pll_setup_48KHz = {
	0x00047C80,
	0x0000042D,
	0x000000C2,
	{0x000634D3, 0x00000000},
	24576000,
	PLL_SETUPFLAG_WAITLOCK,				/*!< PLL setup flags, Or'ed value of PLL_SETUPFLAG_* definitions */
};

void audio_pll_setup(void)
{
	/* Stop auto trimming of the FRO from USB */
	Chip_USB_TrimOff(0);

	/* Set PLL input clock to 12-MHz FRO */
	Chip_Clock_SetSystemPLLSource(SYSCON_PLLCLKSRC_FRO12MHZ);
	Chip_Clock_SetPLLFreq(&pll_setup_48KHz);

	Chip_Clock_EnablePeriphClock(SYSCON_CLOCK_IOCON);
	Chip_IOCON_PinMuxSet(LPC_IOCON, 1, 17, (IOCON_FUNC4 | IOCON_MODE_INACT | IOCON_DIGITAL_EN));
	Chip_Clock_DisablePeriphClock(SYSCON_CLOCK_IOCON);
	Chip_Clock_SetMCLKDirOutput();
	Chip_Clock_SetMCLKClockSource(SYSCON_MCLKSRC_PLL, 1);
}

/* Restart the audio pll */
void audio_pll_start(void)
{
	Chip_Clock_SetSystemPLLSource(SYSCON_PLLCLKSRC_FRO12MHZ);
	Chip_SYSCON_PowerUp(SYSCON_PDRUNCFG_PD_SYS_PLL);

#if defined(LOWPOWEROPERATION)
	/* Wait for PLL to lock. Note PLL may lock, but not be at the exact rate it
	 * was at when it was shut down. */
	while (Chip_Clock_IsSystemPLLLocked() == false);
#endif

	Chip_Clock_SetMCLKDirOutput();
	Chip_Clock_SetMCLKClockSource(SYSCON_MCLKSRC_PLL, 1);
}

/* Stop the audio pll */
void audio_pll_stop(void)
{
	/* Stop the MCLK OUT to save power */
	Chip_Clock_SetMCLKClockSource(SYSCON_MCLKSRC_DISABLED, 1);
	Chip_Clock_SetMCLKDirInput();

	/* Turn OFF PLL */
	Chip_Clock_SetSystemPLLSource(SYSCON_PLLCLKSRC_DISABLED);
	Chip_SYSCON_PowerDown(SYSCON_PDRUNCFG_PD_SYS_PLL);
}
