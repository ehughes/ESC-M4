/*
 * @brief Group Interrupt example
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

/** @defgroup PERIPH_GINT_5411X Group Interrupt example
 * @ingroup EXAMPLES_PERIPH_5411X
 * @include "periph_gint\readme.txt"
 */

/**
 * @}
 */

/*****************************************************************************
 * Private types/enumerations/variables
 ****************************************************************************/

#if defined(BOARD_NXP_LPCXPRESSO_54114)
/* GPIO pin for GROUPED GPIO interrupt.
     When both SW1-WAKE and SW2-ISP is pressed the group interrupt is triggered */
#define BUTTON1_PIN         24	/* GPIO pin number for SW1 */
#define BUTTON1_PORT        0	/* GPIO port number for SW1 */

#define BUTTON2_PIN         31	/* GPIO pin number for SW2 */
#define BUTTON2_PORT        0	/* GPIO port number for SW2 */

#else
#error "Grouped GPIO Interrupt not configured for this example"
#endif /* defined(BOARD_NXP_LPCXPRESSO_54102) */

/*****************************************************************************
 * Public types/enumerations/variables
 ****************************************************************************/

/*****************************************************************************
 * Private functions
 ****************************************************************************/

/*****************************************************************************
 * Public functions
 ****************************************************************************/

/**
 * @brief	Handle Group GPIO 0 interrupt
 * @return	Nothing
 */
void GINT0_IRQHandler(void)
{
	Chip_GPIOGP_ClearIntStatus(LPC_GINT, 0);
	Board_LED_Toggle(0);
}

/**
 * @brief	Main program body
 * @return	Does not return
 */
int main(void)
{
	int loop = 1;	/* Used to fix the unreachable statement warning */

	/* Generic Initialization */
	SystemCoreClockUpdate();
	Board_Init();
	Board_LED_Set(0, false);

	/* Initialize GPIO grouped interrupt Block */
	Chip_GPIOGP_Init(LPC_GINT);

	/* Configure pins as GPIO */
	Chip_IOCON_PinMuxSet(LPC_IOCON, BUTTON1_PORT, BUTTON1_PIN,
						 (IOCON_FUNC0 | IOCON_DIGITAL_EN  | IOCON_GPIO_MODE));
	Chip_IOCON_PinMuxSet(LPC_IOCON, BUTTON2_PORT, BUTTON2_PIN,
						 (IOCON_FUNC0 | IOCON_MODE_INACT | IOCON_DIGITAL_EN));

	/* Group GPIO interrupt 0 will be invoked when both SW1-WAKE and SW2-ISP buttons are pressed. */
	Chip_GPIO_SetPinDIRInput(LPC_GPIO, BUTTON1_PORT, BUTTON1_PIN);
	Chip_GPIO_SetPinDIRInput(LPC_GPIO, BUTTON2_PORT, BUTTON2_PIN);

	/* Button 1 Setup for falling edge*/
	Chip_GPIOGP_SelectLowLevel(LPC_GINT, 0, BUTTON1_PORT, 1UL << BUTTON1_PIN);
	Chip_GPIOGP_EnableGroupPins(LPC_GINT, 0, BUTTON1_PORT, 1UL << BUTTON1_PIN);

	/* Button 2 Setup for falling edge*/
	Chip_GPIOGP_SelectLowLevel(LPC_GINT, 0, BUTTON2_PORT, 1UL << BUTTON2_PIN);
	Chip_GPIOGP_EnableGroupPins(LPC_GINT, 0, BUTTON2_PORT, 1UL << BUTTON2_PIN);

	/* Trigger interrupt when both buttons are pressed */
	Chip_GPIOGP_SelectAndMode(LPC_GINT, 0);
	Chip_GPIOGP_SelectEdgeMode(LPC_GINT, 0);

	/* Enable Group GPIO interrupt 0 */
	NVIC_EnableIRQ(GINT0_IRQn);

	/* Spin in a loop here.  All the work is done in ISR. */
	while (loop) {
		/* Sleep until button press */
		__WFI();
	}
	return 0;
}
