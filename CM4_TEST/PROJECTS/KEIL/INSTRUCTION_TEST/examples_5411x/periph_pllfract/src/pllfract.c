/*
 * @brief PLL setup example
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

/* GPIO pin for button input */
#if defined(BOARD_NXP_LPCXPRESSO_54114)
#define GPIO_BUTTON_PORT    0	/* GPIO port number mapped to button */
#define GPIO_BUTTON_PIN     24	/* GPIO pin number mapped to button */

#else
#error "Board not supported - setup GPIO for button"
#endif

/* CLKOUT divider */
#define CLKOUT_DIV      10

/* PLL clock source, must be one of the following:
   SYSCON_PLLCLKSRC_IRC, SYSCON_PLLCLKSRC_CLKIN,
   SYSCON_PLLCLKSRC_WDTOSC, SYSCON_PLLCLKSRC_RTC. */
// #define PLLCLOCKSOURCE  SYSCON_PLLCLKSRC_IRC

/* Enable this definition to use more precise PLL outputs */
// #define USEPLLPRECISE

#define TICKSPERKHZ     (1000)
#define TICKSPERMHZ     (TICKSPERKHZ * 1000)
#define REFFREQPLL      (13 * TICKSPERMHZ)

/* PLL frequency output test list */
static const uint32_t freqs[] = {
	1500000, 3000000, 5000000, 9000000, 11000000,
	REFFREQPLL, 15000000, 21000000, 25000000, 32000000,
	37000000, 41000000, 45000000, 50000000, 54000000,
	59000000, 63000000, 66000000, 70000000, 75000000,
	78000000, 82000000, 90000000, 96000000, 100000000,
};

static CHIP_SYSCON_PLLCLKSRC_T curr_src;
static int freq_index, fmode;

static const char *in_name[] = {"IRC", "CLKIN", "WDTOSC", "RTCOSC"};

/*****************************************************************************
 * Public types/enumerations/variables
 ****************************************************************************/

/*****************************************************************************
 * Private functions
 ****************************************************************************/

/* Get a baseline count reading in the frequency measurement hardware. Can
   be used to determine rate of reference clock once a known source and
   reference pair value is known. */
static uint32_t reverseFreqMeasure(void)
{
	uint32_t ticksRefs;

	/* Setup to measure the selected target wirh main clock as reference */
	Chip_INMUX_SetFreqMeasRefClock(FREQ_MEAS_MAIN_CLK);
	Chip_INMUX_SetFreqMeasTargClock(FREQMSR_FRO12MHZ);

	/* Start a measurement cycle and wait for it to complete. If the target
	   clock is not running, the measurement cycle will remain active
	   forever, so a timeout may be necessary if the target clock can stop */
	Chip_SYSCON_StartFreqMeas();
	while (!Chip_SYSCON_IsFreqMeasComplete()) {}

	/* Get computed frequency */
	ticksRefs = Chip_SYSCON_GetRawFreqMeasCapval();

	return ticksRefs;
}


/* Helper function for safe PLL rate setup */
static void setPllRate(uint32_t rate)
{
	PLL_CONFIG_T pllConfig;
	PLL_SETUP_T pllSetup;
	PLL_ERROR_T pllError;
	volatile int j;

	/* Switch to IRC while adjusting the PLL. Note peripherals
	   using the ASYNC clock use the IRC as the reference clock
	   and are not affected by this switch. */
	Chip_Clock_SetMainClockSource(SYSCON_MAINCLKSRC_FRO12MHZ);

	/* Power down PLL to change the PLL divider ratio */
	Chip_SYSCON_PowerDown(SYSCON_PDRUNCFG_PD_SYS_PLL);

	/* Select the PLL input */
	Chip_Clock_SetSystemPLLSource(curr_src);
	if (curr_src == SYSCON_PLLCLKSRC_RTC) {
		/* When switching clock sources for the PLL, both the current and new source
		   must be enabled and requires a small sync time. */
		for (j = 0; j < 0x10000; j++) {}
	}

	/* Setup PLL configuration */
	pllConfig.desiredRate = rate;
	pllConfig.InputRate = 0;/* Not used unless PLL_CONFIGFLAG_USEINRATE flag is used */
	if (fmode) {
		pllConfig.flags = 0;
		pllConfig.ss_mf = SS_MF_64;
		pllConfig.ss_mr = SS_MR_K3;
		pllConfig.ss_mc = SS_MC_RECC;
		pllConfig.mfDither = false;
	}
	else {
		/* Force non-fractional mode */
		pllConfig.flags = PLL_CONFIGFLAG_FORCENOFRACT;
	}
	pllError = Chip_Clock_SetupPLLData(&pllConfig, &pllSetup);
	if (pllError != PLL_ERROR_SUCCESS) {
		DEBUGOUT("PLL config error %d\r\n", pllError);
		return;
	}

	if (curr_src == SYSCON_PLLCLKSRC_RTC) {
		/* Disable PLL wait lock flag when using RTC or WDTOSC, since
		   it will never lock */
		pllSetup.flags = PLL_SETUPFLAG_POWERUP | PLL_SETUPFLAG_ADGVOLT;
	}
	else {
		/* If using WAITLOCK, powerup is implied, but we set the flag here for
		   consistency */
		if (fmode) {
			/* Don't wait for PLL lock when using SS, it might not lock */
			pllSetup.flags = PLL_SETUPFLAG_POWERUP | PLL_SETUPFLAG_ADGVOLT;
		}
		else {
			pllSetup.flags = PLL_SETUPFLAG_POWERUP | PLL_SETUPFLAG_WAITLOCK | PLL_SETUPFLAG_ADGVOLT;
		}
	}
	pllError = Chip_Clock_SetupSystemPLLPrec(&pllSetup);
	if (pllError != PLL_ERROR_SUCCESS) {
		DEBUGOUT("PLL setup error %d\r\n", pllError);
		return;
	}

	if (fmode) {
		/* Since PLL lock may not happen when using SS mode, force a small
		   delay here to let it stabilize. */
		for (j = 0; j < 0x8000; j++) {}
	}
	else {
		if (curr_src == SYSCON_PLLCLKSRC_RTC) {
			/* Small delay for PLL lock when using RTC or WDTOSC */
			for (j = 0; j < 0x8000; j++) {}
		}
	}
	/* Set main clock source to the system PLL  */
	Chip_Clock_SetMainClockSource(SYSCON_MAINCLKSRC_PLLOUT);
}

/* Get user option from UART */
static void get_option(void) {
	int ch = EOF;
	DEBUGOUT(
		"Select an option\r\n"
		"\t1. Select source [CURR: %s]\r\n"
		"\t2. Enable/Disable Fractional PLL mode [CURR: %s]\r\n"
		"\t3. Change frequency [CURR: %d KHz]\r\n",
		in_name[curr_src],
		fmode ? "ENABLED" : "DISABLED",
		freqs[freq_index] / TICKSPERKHZ);
	while (1) {
		while ((ch = Board_UARTGetChar()) == EOF) {}
		if (ch == '1') {
			if (curr_src == SYSCON_PLLCLKSRC_RTC) {
				curr_src = SYSCON_PLLCLKSRC_FRO12MHZ;
			}
			else {
				curr_src = (CHIP_SYSCON_PLLCLKSRC_T) ((int) curr_src + 1);
			}
			if ((curr_src == SYSCON_PLLCLKSRC_CLKIN) && (Chip_Clock_GetExtClockInRate() == 0)) {
				curr_src = (CHIP_SYSCON_PLLCLKSRC_T) ((int) curr_src + 1);
			}
			if (curr_src == SYSCON_PLLCLKSRC_RTC) {
				fmode = 0;
			}
			break;
		}
		else if (ch == '2') {
			fmode = 1 - fmode;
			if (fmode && curr_src == SYSCON_PLLCLKSRC_RTC) {
				DEBUGOUT("Fractional mode not supported when PLL input is from WDT or RTC oscillators!\r\n");
				fmode = 0;
				continue;
			}
			break;
		}
		else if (ch == '3') {
			freq_index++;
			if (freq_index >= (sizeof(freqs) / sizeof(freqs[0]))) {
				freq_index = 0;
			}
			break;
		}
	}
	DEBUGSTR("\x1B[1J");
}

/*****************************************************************************
 * Public functions
 ****************************************************************************/

/* main function (C entry point) */
int main(void)
{
	int loop = 1;	/* Used to prevent unreachable statement warning */
	uint64_t refTicks, upTicks, upRate;

	/* Board Initialization */
	SystemCoreClockUpdate();
	Board_Init();

	/* Turn on the RTC 32K Oscillator if it needs to be used as a source
	   for the PLL. */
	Chip_RTC_PowerUp(LPC_RTC);
	Chip_Clock_EnableRTCOsc();

	/* Enable the power to the WDT Oscillator */
	Chip_SYSCON_PowerUp(SYSCON_PDRUNCFG_PD_WDT_OSC);

	if (Chip_Clock_GetExtClockInRate() != 0) {
		/* Setup CLKIN via IOCON (pin muxing) */
		Chip_IOCON_PinMuxSet(LPC_IOCON, 0, 22,
							 (IOCON_FUNC1 | IOCON_MODE_INACT | IOCON_DIGITAL_EN));
	}

	/* Map P0.21 as CLKOUT pin */
	Chip_IOCON_PinMuxSet(LPC_IOCON, 0, 21,
						 (IOCON_FUNC1 | IOCON_MODE_INACT | IOCON_DIGITAL_EN));

	/* Setup CLKOUT for main system clock divided by 10 */
	Chip_Clock_SetCLKOUTSource(SYSCON_CLKOUTSRC_MAINCLK, CLKOUT_DIV);

	/* Get reference ticks for IRC as target and reference rate */
	setPllRate(REFFREQPLL);
	refTicks = (uint64_t) reverseFreqMeasure();

	/* Test a setup of different PLL frequencies */
	while (loop) {

		/* Setup PLL for selected rate */
		setPllRate(freqs[freq_index]);

		DEBUGOUT("\x1B[0;0fPLL rate requested    : %u KHz\r\n", (freqs[freq_index] / TICKSPERKHZ));
		DEBUGOUT("PLL input rate        : %u KHz\r\n", (Chip_Clock_GetSystemPLLInClockRate() / TICKSPERKHZ));
		DEBUGOUT("PLL output (actual)   : %u KHz (reported by driver)\r\n",
				 (Chip_Clock_GetSystemPLLOutClockRate(false) / TICKSPERKHZ));
		DEBUGOUT("CLKOUT rate (est)     : %u KHz\r\n", ((freqs[freq_index] / CLKOUT_DIV) / TICKSPERKHZ));

		/* Only accurate when frequency reference is above base reference */
		upRate = REFFREQPLL;
		if (freqs[freq_index] > upRate) {
			/* Using the reference tick count with main clock at the IRC rate,
			   we can determine the approximate main clock rate */
			upTicks = (uint64_t) reverseFreqMeasure();
			upRate = (upRate * refTicks) / upTicks;

			/* Additional info */
			DEBUGOUT("CLKOUT rate (actual)  : %u KHz\r\n", ((uint32_t) (upRate / CLKOUT_DIV) / TICKSPERKHZ));
			DEBUGOUT("Estimated PLL rate    : %u KHz (computed by frequency measurement hardware)\r\n",
					 ((uint32_t) upRate /  TICKSPERKHZ));
			DEBUGOUT("Refticks              : %u\r\n", (uint32_t) refTicks);
			DEBUGOUT("upTicks               : %u\r\n", (uint32_t) upTicks);
		}
		DEBUGSTR("\r\n");
		/* Update options from UART */
		get_option();
	}

	return 0;
}
