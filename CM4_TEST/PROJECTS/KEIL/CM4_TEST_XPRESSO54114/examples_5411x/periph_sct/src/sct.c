/*
 * @brief State Configurable Timer (SCT) example
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

/** @defgroup PERIPH_SCT_5411X SCT example
 * @ingroup EXAMPLES_PERIPH_5411X
 * @include "periph_sct\readme.txt"
 */

/**
 * @}
 */

/*****************************************************************************
 * Private types/enumerations/variables
 ****************************************************************************/

/*****************************************************************************
 * Public types/enumerations/variables
 ****************************************************************************/

typedef enum {
	kCounterWidth16Bits, kCounterWidth32Bits
} CounterWidth;

typedef enum {
	kSystemClock, kPrescaledSystemClock, kSCTInput,
	kPrescaledSCTInput
} SCTClock;

typedef enum {
	kRisingInput0, kFallingInput0, kRisingInput1, kFallingInput1, kRisingInput2,
	kFallingInput2, kRisingInput3, kFallingInput3, kRisingInput4,
	kFallingInput4, kRisingInput5, kFallingInput5, kRisingInput6,
	kFallingInput6, kRisingInput7, kFallingInput7, kDoNotCare
} SCTInputEdge;

/*****************************************************************************
 * Private functions
 ****************************************************************************/

/*****************************************************************************
 * Public functions
 ****************************************************************************/

/**
 * @brief	Handle interrupt from State Configurable Timer
 * @return	Nothing
 */
void SCT0_IRQHandler(void) {

	/* Clear the Interrupt */
	Chip_SCT_ClearEventFlag(LPC_SCT, SCT_EVT_0);
	Board_LED_Toggle(1);
}

/**
 * Executes a match test on the SCT
 *
 * Verifies the event 0 occurs when a match occurs on the match register given
 * by the argument match_register
 *
 * @param pSCT
 * @param counter_width  Currently supports kCounterWidth32Bits only
 * @param match_register
 * @param match_count
 * @param sct_clock
 * @param sct_input_edge
 * @return
 */

int execute_SCT_match_test(LPC_SCT_T *pSCT, CounterWidth counter_width, CHIP_SCT_MATCH_REG_T match_register,
						   uint32_t match_count, SCTClock sct_clock, SCTInputEdge sct_input_edge) {

	uint32_t cfg = 0, evt_ctrl = 0;
	int i;

	/* Custom Initialization */
	Chip_SCT_Init(pSCT);

	switch (counter_width) {
	case kCounterWidth16Bits:
		cfg |= SCT_CONFIG_16BIT_COUNTER;
		break;

	case kCounterWidth32Bits:
		cfg |= SCT_CONFIG_32BIT_COUNTER;
		break;
	}

	switch (sct_clock) {
	case kSystemClock:
		cfg |= SCT_CONFIG_CLKMODE_SYSCLK;
		break;

	case kPrescaledSystemClock:
		cfg |= SCT_CONFIG_CLKMODE_PRESCALED_SYSCLK;
		break;

	case kSCTInput:
		cfg |= SCT_CONFIG_CLKMODE_SCT_INPUT;
		break;

	case kPrescaledSCTInput:
		cfg |= SCT_CONFIG_CLKMODE_PRESCALED_SCT_INPUT;
		break;
	}

	if ((sct_clock == kSCTInput) || (sct_clock == kPrescaledSCTInput)) {
		switch (sct_input_edge) {
		case kRisingInput0:
			cfg |= SCT_CONFIG_CKSEL_RISING_IN_0;
			break;

		case kFallingInput0:
			cfg |= SCT_CONFIG_CKSEL_FALLING_IN_0;
			break;

		case kRisingInput1:
			cfg |= SCT_CONFIG_CKSEL_RISING_IN_1;
			break;

		case kFallingInput1:
			cfg |= SCT_CONFIG_CKSEL_FALLING_IN_1;
			break;

		case kRisingInput2:
			cfg |= SCT_CONFIG_CKSEL_RISING_IN_2;
			break;

		case kFallingInput2:
			cfg |= SCT_CONFIG_CKSEL_FALLING_IN_2;
			break;

		case kRisingInput3:
			cfg |= SCT_CONFIG_CKSEL_RISING_IN_3;
			break;

		case kFallingInput3:
			cfg |= SCT_CONFIG_CKSEL_FALLING_IN_3;
			break;

		case kRisingInput4:
			cfg |= SCT_CONFIG_CKSEL_RISING_IN_4;
			break;

		case kFallingInput4:
			cfg |= SCT_CONFIG_CKSEL_FALLING_IN_4;
			break;

		case kRisingInput5:
			cfg |= SCT_CONFIG_CKSEL_RISING_IN_5;
			break;

		case kFallingInput5:
			cfg |= SCT_CONFIG_CKSEL_FALLING_IN_5;
			break;

		case kRisingInput6:
			cfg |= SCT_CONFIG_CKSEL_RISING_IN_6;
			break;

		case kFallingInput6:
			cfg |= SCT_CONFIG_CKSEL_FALLING_IN_6;
			break;

		case kRisingInput7:
			cfg |= SCT_CONFIG_CKSEL_RISING_IN_7;
			break;

		case kFallingInput7:
			cfg |= SCT_CONFIG_CKSEL_FALLING_IN_7;
			break;

		case kDoNotCare:
			break;
		}
	}

	Chip_SCT_Config(pSCT, cfg);

	/* The match/capture REGMODE defaults to match mode */

	/* Set the match count */
	Chip_SCT_SetMatchCount(pSCT, match_register, match_count);

	/* Set the match reload value */
	Chip_SCT_SetMatchReload(pSCT, match_register, match_count);

	/* Setup so that a match in the match_register when in State 0 causes Event 0.
	 * Setup so Event 0 causes a Limit condition
	 */
	evt_ctrl |= SCT_EV_CTRL_MATCHSEL(match_register) | SCT_EV_CTRL_HEVENT_L |
				SCT_EV_CTRL_COMBMODE_MATCH;
	Chip_SCT_EventControl(pSCT, 0, evt_ctrl);
	Chip_SCT_EventStateMask(pSCT, 0, (1UL << 0));
	Chip_SCT_Limit(pSCT, (1UL << 0));

	/* Setup to toggle all outputs on match */
	for (i = 0; i < CONFIG_SCT_nOU; i++) {
		LPC_SCT->OUT[i].SET = (1UL << 0);
		LPC_SCT->OUT[i].CLR = (1UL << 0);
		Chip_SCT_SetConflictResolution(LPC_SCT, i, 0x3);
	}

	/* Enable an Interrupt on the Match Event */
	Chip_SCT_EnableEventInt(pSCT, SCT_EVT_0);

	/* Enable the IRQ for the SCT */
	NVIC_EnableIRQ(SCT0_IRQn);

	/* Start the counter */
	if (counter_width == kCounterWidth32Bits) {
		Chip_SCT_ClearControl(pSCT, SCT_CTRL_HALT_L);
	}
	else {
		// TODO deal with 16 bit counter mode
	}

	return 0;
}

/**
 * @brief	Application main program
 * @return	Nothing (This function will not return)
 */

int main(void)
{
	int loop = 1;	/* Used to fix the unreachable statement warning */

	uint32_t match_count;

	/* Generic Initialization */
	SystemCoreClockUpdate();
	Board_Init();

	Chip_IOCON_PinMuxSet(LPC_IOCON, 0, 0, IOCON_MODE_PULLUP | IOCON_FUNC5 | IOCON_DIGITAL_EN | IOCON_INPFILT_OFF);	/* SCT0_OUT3 */
	Chip_IOCON_PinMuxSet(LPC_IOCON, 0, 1, IOCON_MODE_PULLUP | IOCON_FUNC5 | IOCON_DIGITAL_EN | IOCON_INPFILT_OFF);	/* SCT0_OUT1 */

	/* Set up SCT match counter */
	match_count = 100;
	execute_SCT_match_test(LPC_SCT, kCounterWidth32Bits, SCT_MATCH_0, match_count, kSystemClock, kDoNotCare);

	/* test completes without error. */
	while (loop) {
		__WFI();
	}
	return 0;
}
