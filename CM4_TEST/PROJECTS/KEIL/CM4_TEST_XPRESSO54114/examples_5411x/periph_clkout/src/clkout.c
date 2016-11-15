/*
 * @brief Clock output example
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

#include "board.h"

/*****************************************************************************
 * Private types/enumerations/variables
 ****************************************************************************/

/* Select clock and divider */
#define CLKOUT_SEL      SYSCON_CLKOUTSRC_MAINCLK
#define CLKOUT_DIV      10

/*****************************************************************************
 * Public types/enumerations/variables
 ****************************************************************************/

/*****************************************************************************
 * Private functions
 ****************************************************************************/

/*****************************************************************************
 * Public functions
 ****************************************************************************/
struct clk_list {
	CHIP_SYSCON_CLKOUTSRC_T src;
	const char *name;
} clk_list[] = {
	{SYSCON_CLKOUTSRC_MAINCLK, "Main Clock"},
	{SYSCON_CLKOUTSRC_WDTOSC,  "Watchdog Osc"},
	{SYSCON_CLKOUTSRC_FRO12MHZ, "FRO 12MHz Osc"},
	{SYSCON_CLKOUTSRC_RTC, "RTC Osc"},
	{SYSCON_CLKOUTSRC_CLKIN, "External Clock [CLKIN]"},
};

/* C Entry point */
int main(void)
{
	int loop = 1;	/* Prevents the unreachable statement warning */
	int count = (sizeof(clk_list) / sizeof(clk_list[0])) - 1;
	int i = 0;

	/* Board Initialization */
	SystemCoreClockUpdate();
	Board_Init();

	/* Clock enables and checks */
	DEBUGSTR("Press any key to cycle through clocks...\r\n");

	/* Turn on the RTC 32K Oscillator */
	Chip_RTC_PowerUp(LPC_RTC);
	Chip_Clock_EnableRTCOsc();

	/* Enable the power to the WDT Oscillator */
	Chip_SYSCON_PowerUp(SYSCON_PDRUNCFG_PD_WDT_OSC);

	if (Chip_Clock_GetExtClockInRate() != 0) {
		/* Setup CLKIN via IOCON (pin muxing) */
		Chip_IOCON_PinMuxSet(LPC_IOCON, 0, 22,
							 (IOCON_FUNC1 | IOCON_MODE_INACT | IOCON_DIGITAL_EN));
		count++;
	}

	/* Map P0.21 as CLKOUT pin */
	Chip_IOCON_PinMuxSet(LPC_IOCON, 0, 21,
						 (IOCON_FUNC1 | IOCON_MODE_INACT | IOCON_DIGITAL_EN));

	while (loop) {
		if (i >= count) {
			i = 0;
		}
		DEBUGOUT("Clock selected : %s\r\n", clk_list[i].name);
		Chip_Clock_SetCLKOUTSource(clk_list[i].src, CLKOUT_DIV);
		i++;
		while (Board_UARTGetChar() == EOF) {}
	}
	return 0;
}
