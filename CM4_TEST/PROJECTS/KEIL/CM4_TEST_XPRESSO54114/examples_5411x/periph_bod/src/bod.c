/*
 * @brief Brown-out detector example
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

/** @defgroup PERIPH_BOD_5411X Brown-out detector example
 * @ingroup EXAMPLES_PERIPH_5411X
 * @include "periph_bod\readme.txt"
 */

/**
 * @}
 */

/*****************************************************************************
 * Private types/enumerations/variables
 ****************************************************************************/
#define TICKRATE_HZ (10)	/* 10 ticks per second */

static const char* rst_info_txt[] = {
	"power on",
	"external",
	"watchdog timer",
	"brown-out detect",
	"software system",
};
static const uint32_t rst_info_ct = sizeof(rst_info_txt)/sizeof(char*);

/*****************************************************************************
 * Public types/enumerations/variables
 ****************************************************************************/

/*****************************************************************************
 * Private functions
 ****************************************************************************/

/*****************************************************************************
 * Public functions
 ****************************************************************************/

/* Brown-out detector interrupt */
void WDT_BOD_IRQHandler(void)
{
	/* Turn on LED */
	Board_LED_RGB_Set(LED_RGB_RED);
	Board_TestIO_Set(0, true);											/* set GPIO 0 */
	while (1) ;
}
/**
 * @brief	Handle interrupt from SysTick timer
 * @return	Nothing
 */
static uint32_t tick_ct=0;
void SysTick_Handler(void)
{
	static bool toggle=true;

	tick_ct += 1;														/* bump tick count */
	if ((tick_ct % 10) == 0) {											/* if one second has elapsed (10 ticks) */
		toggle = !toggle;												/* invert toggle */
		Board_LED_RGB_Set( toggle ? LED_RGB_MAGENTA : LED_RGB_OFF);		/* set LED as appropriate */
	}

	if (tick_ct == 30)
		Board_TestIO_Set(0, false);										/* clear GPIO 0 */
}

/**
 * @brief	Output all of the reset status bits information
 * @return	Nothing
 */
void Display_Reset_Info(uint32_t rst)
{
	uint32_t i;
	DEBUGOUT("Reset status:\r\n");
	for (i=0; i<rst_info_ct; i++) {
		if (rst & (1<<i)) {
			DEBUGOUT(" %s reset\r\n", rst_info_txt[i]);
		}
	}
}

/**
 * @brief	main routine for bown-out example
 * @return	Function will not exit.
 */
int main(void)
{
	int loop = 1;	/* Used to fix the unreachable statement warning */
	uint32_t rst_stat;

	/* Generic Initialization */
	SystemCoreClockUpdate();
	Board_Init();
	Board_LED_RGB_Off();
	SysTick_Config(SystemCoreClock / TICKRATE_HZ);
	
	/*	If the board was reset due to a BOD event, the reset can be detected here.
		LED is set to white if reset occured due to BOD.
		Otherwise, the LED ise set green */
	rst_stat = Chip_SYSCON_GetSystemRSTStatus();
	Display_Reset_Info(rst_stat);
	Board_TestIO_Set(0, true);
	if (rst_stat & SYSCON_RST_BOD) {
		Chip_SYSCON_ClearSystemRSTStatus(SYSCON_RST_BOD);
		Board_LED_RGB_Set(LED_RGB_WHITE);
	} else {
		Board_LED_RGB_Set(LED_RGB_GREEN);
	}

	/* Enable BOD power */
	Chip_SYSCON_PowerUp(SYSCON_PDRUNCFG_PD_BOD_RST | SYSCON_PDRUNCFG_PD_BOD_INTR);

	/* Set BOD detection interrupt to 3.05v and device reset to 1.5v */
	Chip_PMU_SetBODLevels(PMU_BODRSTLVL_1_50V, PMU_BODINTVAL_3_05v);

	/* Enable BOD reset and interrupt on low power level */
	Chip_PMU_EnableBODReset();
	Chip_PMU_EnableBODInt();

	/* Enable BOD interrupt */
	NVIC_EnableIRQ(WDTBOD_IRQn);

	/* Wait forever */
	while (loop) {
		__WFI();
	}
	return 0;
}
