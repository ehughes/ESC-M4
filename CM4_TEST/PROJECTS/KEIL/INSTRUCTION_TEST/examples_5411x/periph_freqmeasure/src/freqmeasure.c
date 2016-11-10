/*
 * @brief Frequency Measurement example
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
#include <stdio.h>

/*****************************************************************************
 * Private types/enumerations/variables
 ****************************************************************************/

#define CLKOUT_SEL   SYSCON_CLKOUTSRC_WDTOSC
//#define CLKOUT_SEL   SYSCON_CLKOUTSRC_MAINCLK
//#define CLKOUT_SEL   SYSCON_CLKOUTSRC_RTC
//#define CLKOUT_SEL   SYSCON_CLKOUTSRC_FRO12MHZ
#define CLKOUT_DIV   1
/*****************************************************************************
 * Public types/enumerations/variables
 ****************************************************************************/

/*****************************************************************************
 * Private functions
 ****************************************************************************/

/* Measurement cycle with value display */
static uint32_t measureDisplay(char *str, FREQMSR_SRC_T src, uint32_t freqRef, uint32_t freqExp)
{
	uint32_t freqComp;

	/* Setup to measure the selected target */
	Chip_INMUX_SetFreqMeasTargClock(src);

	/* Start a measurement cycle and wait for it to complete. If the target
	   clock is not running, the measurement cycle will remain active
	   forever, so a timeout may be necessary if the target clock can stop */
	Chip_SYSCON_StartFreqMeas();
	while (!Chip_SYSCON_IsFreqMeasComplete()) {}

	/* Get computed frequency */
	freqComp = Chip_SYSCON_GetCompFreqMeas(freqRef);

	/* Show the raw capture value and the compute frequency */
	DEBUGOUT("Capture source : %s, reference frequency = %dHz\r\n", str, freqRef);
	DEBUGOUT("Raw frequency capture value = %d\r\n", Chip_SYSCON_GetRawFreqMeasCapval());
	DEBUGOUT("Computed frequency value = %dHz\r\n", freqComp);
	DEBUGOUT("Expected frequency value = %dHz\r\n\r\n", freqExp);

	return freqComp;
}

/*****************************************************************************
 * Public functions
 ****************************************************************************/

/**
 * @brief	main routine for example
 * @return	Function should not exit.
 */
int main(void)
{
	int loop = 1;	/* Used to fix the unreachable statement warning */

	uint32_t freqRef;

	/* Board Initialization */
	SystemCoreClockUpdate();
	Board_Init();

	/* Note that the accuracy of a target measurement requires a reference
	   clock rate faster than the target clock. */

	/* Powerup WDT oscillator */
	Chip_SYSCON_PowerUp(SYSCON_PDRUNCFG_PD_WDT_OSC);

	/* Set the WDT Frequency to 500 KHz (2 MHz / 4) */
	Chip_Clock_SetWDTOSCRate(WDT_FREQ_2000000, 4);

	/* Turn on the RTC 32K Oscillator */
	Chip_RTC_PowerUp(LPC_RTC);
	Chip_Clock_EnableRTCOsc();

	/* Setup to use the main oscillator for the frequency reference since
	   we already know this rate */
	Chip_INMUX_SetFreqMeasRefClock(FREQ_MEAS_MAIN_CLK);
	freqRef = Chip_Clock_GetMainClockRate();



#ifdef CLKOUT_SEL /* FIXME: ****** FOR TESTING **********/
	/* Map P0.21 as CLKOUT pin [Connected to J2 Pin2] */
	Chip_IOCON_PinMuxSet(LPC_IOCON, 0, 21,
						 (IOCON_FUNC1 | IOCON_MODE_INACT | IOCON_DIGITAL_EN));

	/* There isn't too much to this example */
	Chip_Clock_SetCLKOUTSource(CLKOUT_SEL, CLKOUT_DIV);
#endif

	/* Start watchdog oscillator frequency measurement and display results */
	measureDisplay("Watchdog oscillator (main clock reference)", FREQMSR_WDOSC,
				   freqRef, Chip_Clock_GetWDTOSCRate());

	/* Start RTC oscillator frequency measurement and display results */
	measureDisplay("RTC32K oscillator (main clock reference)", FREQMSR_32KHZOSC,
				   freqRef, Chip_Clock_GetRTCOscRate());

	/* Start IRC oscillator frequency measurement and display results. This may not be
	   accuare as it will be too close to the main oscillator frequency. */
	measureDisplay("FRO oscillator (main clock reference)", FREQMSR_FRO12MHZ, freqRef,
				   SYSCON_FRO12MHZ_FREQ);

	while (loop) {
		__WFI();
	}
	return 0;
}
