/*
 * @brief Wakeup example
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

/*****************************************************************************
 * Private types/enumerations/variables
 ****************************************************************************/

/* GPIO pin for PININT input */
#if defined(BOARD_NXP_LPCXPRESSO_54114)
#define GPIO_PININT_PIN     24						/* GPIO pin number mapped to PININT */
#define GPIO_PININT_PORT    0						/* GPIO port number mapped to PININT */
#define GPIO_PININT_INDEX   PININTSELECT0			/* PININT index used for GPIO mapping */
#define PININT_IRQ_HANDLER  PIN_INT0_IRQHandler		/* GPIO interrupt IRQ function name */
#define PININT_NVIC_NAME    PIN_INT0_IRQn			/* GPIO interrupt NVIC interrupt name */

#else
#error "Board not supported - setup GPIO for pin interrupt"
#endif

static const PINMUX_GRP_T pinmuxing[] = {

	{0, 0,  (IOCON_MODE_INACT | IOCON_FUNC1 | IOCON_DIGITAL_EN | IOCON_INPFILT_OFF)},
	{0, 1,  (IOCON_MODE_INACT | IOCON_FUNC1 | IOCON_DIGITAL_EN | IOCON_INPFILT_OFF)},
	{1, 6,  (IOCON_FUNC7 | IOCON_MODE_INACT | IOCON_DIGITAL_EN)},
	{0, 23, (IOCON_FUNC0 | IOCON_GPIO_MODE | IOCON_DIGITAL_EN)},
	{0, 24, (IOCON_FUNC0 | IOCON_GPIO_MODE | IOCON_DIGITAL_EN)},
	{0, 25, (IOCON_FUNC0 | IOCON_GPIO_MODE | IOCON_DIGITAL_EN)},
	{0, 26, (IOCON_FUNC0 | IOCON_GPIO_MODE | IOCON_DIGITAL_EN)},
	{0, 11, (IOCON_FUNC0 | IOCON_MODE_PULLDOWN | IOCON_DIGITAL_EN)},
	{0, 12, (IOCON_FUNC0 | IOCON_MODE_PULLDOWN | IOCON_DIGITAL_EN)},
	{0, 13, (IOCON_FUNC0 | IOCON_MODE_PULLDOWN | IOCON_DIGITAL_EN)},
	{0, 14, (IOCON_FUNC0 | IOCON_MODE_PULLDOWN | IOCON_DIGITAL_EN)},
	{0, 4,  (IOCON_FUNC0 | IOCON_MODE_PULLDOWN | IOCON_DIGITAL_EN)},

	{0, 2,  (IOCON_FUNC0 | IOCON_MODE_PULLDOWN | IOCON_DIGITAL_EN)},
	{0, 3,  (IOCON_FUNC0 | IOCON_MODE_PULLDOWN | IOCON_DIGITAL_EN)},
	{0, 5,  (IOCON_FUNC0 | IOCON_MODE_PULLDOWN | IOCON_DIGITAL_EN)},
	{0, 6,  (IOCON_FUNC0 | IOCON_MODE_PULLDOWN | IOCON_DIGITAL_EN)},
	{0, 7,  (IOCON_FUNC0 | IOCON_MODE_PULLDOWN | IOCON_DIGITAL_EN)},
	{0, 8,  (IOCON_FUNC0 | IOCON_MODE_PULLDOWN | IOCON_DIGITAL_EN)},
	{0, 9,  (IOCON_FUNC0 | IOCON_MODE_PULLDOWN | IOCON_DIGITAL_EN)},
	{0, 10, (IOCON_FUNC0 | IOCON_MODE_PULLDOWN | IOCON_DIGITAL_EN)},
	{0, 18, (IOCON_FUNC0 | IOCON_MODE_PULLDOWN | IOCON_DIGITAL_EN)},
	{0, 19, (IOCON_FUNC0 | IOCON_MODE_PULLDOWN | IOCON_DIGITAL_EN)},
	{0, 20, (IOCON_FUNC0 | IOCON_MODE_PULLDOWN | IOCON_DIGITAL_EN)},
	{0, 21, (IOCON_FUNC0 | IOCON_MODE_PULLDOWN | IOCON_DIGITAL_EN)},
	{0, 22, (IOCON_FUNC0 | IOCON_MODE_PULLDOWN | IOCON_DIGITAL_EN)},
	{0, 29, (IOCON_FUNC0 | IOCON_MODE_PULLDOWN | IOCON_DIGITAL_EN)},
	{0, 30, (IOCON_FUNC0 | IOCON_MODE_PULLDOWN | IOCON_DIGITAL_EN)},
	{0, 31, (IOCON_FUNC0 | IOCON_MODE_PULLDOWN | IOCON_DIGITAL_EN)},

	{1, 0,  (IOCON_FUNC0 | IOCON_MODE_PULLDOWN | IOCON_DIGITAL_EN)},
	{1, 1,  (IOCON_FUNC0 | IOCON_MODE_PULLDOWN | IOCON_DIGITAL_EN)},
	{1, 2,  (IOCON_FUNC0 | IOCON_MODE_INACT | IOCON_DIGITAL_EN)},
	{1, 3,  (IOCON_FUNC0 | IOCON_MODE_PULLDOWN | IOCON_DIGITAL_EN)},
	{1, 4,  (IOCON_FUNC0 | IOCON_MODE_PULLDOWN | IOCON_DIGITAL_EN)},
	{1, 5,  (IOCON_FUNC0 | IOCON_MODE_PULLDOWN | IOCON_DIGITAL_EN)},
	{1, 7,  (IOCON_FUNC0 | IOCON_MODE_PULLDOWN | IOCON_DIGITAL_EN)},
	{1, 8,  (IOCON_FUNC0 | IOCON_MODE_PULLDOWN | IOCON_DIGITAL_EN)},
	{1, 9,  (IOCON_FUNC0 | IOCON_MODE_PULLDOWN | IOCON_DIGITAL_EN)},
	{1, 10, (IOCON_FUNC0 | IOCON_MODE_PULLDOWN | IOCON_DIGITAL_EN)},
	{1, 13, (IOCON_FUNC0 | IOCON_MODE_PULLDOWN | IOCON_DIGITAL_EN)},
	{1, 14, (IOCON_FUNC0 | IOCON_MODE_PULLDOWN | IOCON_DIGITAL_EN)},
	{1, 15, (IOCON_FUNC0 | IOCON_MODE_PULLDOWN | IOCON_DIGITAL_EN)},
	{1, 17, (IOCON_FUNC0 | IOCON_MODE_PULLDOWN | IOCON_DIGITAL_EN)},
	{1, 12, (IOCON_FUNC0 | IOCON_MODE_PULLDOWN | IOCON_DIGITAL_EN)},
	{1, 11, (IOCON_FUNC0 | IOCON_MODE_PULLDOWN | IOCON_DIGITAL_EN)},
	{1, 16, (IOCON_FUNC0 | IOCON_MODE_PULLDOWN | IOCON_DIGITAL_EN)},

};

/*****************************************************************************
 * Public types/enumerations/variables
 ****************************************************************************/

/*****************************************************************************
 * Private functions
 ****************************************************************************/

/* Turns on the LED and stalls for a bit */
static void ledStallOn(void)
{
	volatile int i;

	/* Turn on LED and delay for a very short time so it can be seen
	   as on. */
	Board_LED_Set(0, true);
	for (i = 0; i < 0x40000; i++) {}
}

static POWER_MODE_T curr_pwr;
/* Get user option from UART */
static void get_option(void) {
	int ch = EOF;
	DEBUGSTR(
		"Select an option\r\n"
		"\t1. Sleep mode\r\n"
		"\t2. Deep Sleep mode\r\n"
		"\t3. Deep power down mode\r\n");
	while (1) {
		while ((ch = Board_UARTGetChar()) == EOF) {}
		if ((ch < '1') || (ch > '3')) {
			continue;
		}
		curr_pwr = (POWER_MODE_T) (ch - '1');
		break;
	}
}

/*****************************************************************************
 * Public functions
 ****************************************************************************/

/* Pin interrupt IRQ handler */
void PININT_IRQ_HANDLER(void)
{
	Chip_PININT_ClearIntStatus(LPC_PININT, PININTCH(GPIO_PININT_INDEX));
}

/* main function (C entry point) */
int main(void)
{
	const char *mname[] =
	{"Sleep [Wake button SW1 to wakeup]", "Deep Sleep [Wake button SW1 to wakeup]", "Deep Powerdown [Reset to wakeup]"};
	int loop = 1;	/* prevents unreachable statement warning */
	CHIP_SYSCON_MAINCLKSRC_T saved_clksrc;
	uint32_t saved_clkRate = 0;

	/* Generic Initialization */
	SystemCoreClockUpdate();
	Board_Init();

	/* Special pin muxing to lower power numbers */
	Chip_IOCON_SetPinMuxing(LPC_IOCON, pinmuxing, sizeof(pinmuxing) / sizeof(pinmuxing[0]));
	ledStallOn();

	/* Show ROM version */
	DEBUGOUT("ROM version = %04x\r\n", Chip_POWER_GetROMVersion());

	/* Switch main system clock to 12Mhz FRO and power down PLL */
	saved_clksrc = Chip_Clock_GetMainClockSource();

	/**** Setup PININT ****/
	/* Wakeup pin is setup as a GPIO input */
	Chip_GPIO_SetPinDIRInput(LPC_GPIO, GPIO_PININT_PORT, GPIO_PININT_PIN);

	/* Configure pin interrupt selection for the GPIO pin in Input Mux Block */
	Chip_PININT_Init(LPC_PININT);
	Chip_INMUX_PinIntSel(GPIO_PININT_INDEX, GPIO_PININT_PORT, GPIO_PININT_PIN);

	/* Configure channel interrupt as edge sensitive and falling edge interrupt */
	Chip_PININT_ClearIntStatus(LPC_PININT, PININTCH(GPIO_PININT_INDEX));
	Chip_PININT_SetPinModeEdge(LPC_PININT, PININTCH(GPIO_PININT_INDEX));
	Chip_PININT_EnableIntLow(LPC_PININT, PININTCH(GPIO_PININT_INDEX));

	/* Enable PININT interrupts */
	NVIC_EnableIRQ(PININT_NVIC_NAME);

	/* Enable wakeup for PININT0 */
	Chip_SYSCON_EnableWakeup(SYSCON_STARTER_PINT0);

	/* Wait for wakeup event */
	while (loop) {
		get_option();
		DEBUGOUT("Entering %s ...\r\n", mname[curr_pwr]);

		/* Disable PLL, if previously enabled, prior to sleep */
		if (saved_clksrc == SYSCON_MAINCLKSRC_PLLOUT) {
			Chip_Clock_SetMainClockSource(SYSCON_MAINCLKSRC_FRO12MHZ);
			Chip_SYSCON_PowerDown(SYSCON_PDRUNCFG_PD_SYS_PLL);
		}
		else if (saved_clksrc == SYSCON_MAINCLKSRC_FROHF) {
			saved_clkRate = Chip_Clock_GetFROHFRate();
			Chip_Clock_SetMainClockSource(SYSCON_MAINCLKSRC_FRO12MHZ);
			LPC_SYSCON->FROCTRL &= ~(SYSCON_FROCTRL_MASK | SYSCON_FROCTRL_HSPDCLK);
			Chip_SYSCON_SetFLASHAccess(SYSCON_FLASH_1CYCLE);
		}

		/* Turn off LED before going to sleep */
		Board_LED_Set(0, false);

		/* Lower system voltages to current lock (likely IRC) */
		Chip_POWER_SetVoltage(Chip_Clock_GetMainClockRate());

		/* Wait for DEBUG Outputs to complete before entering reduced power mode */
		while (!(Chip_UART_GetStatus(DEBUG_UART) & UART_STAT_TXIDLE)) {}

		/* Go to sleep leaving SRAM powered during sleep. Use lower
		     voltage during sleep. */
		Chip_POWER_EnterPowerMode(curr_pwr, (SYSCON_PDRUNCFG_PD_SRAM0));

		DEBUGSTR("Woken up!\r\n");

		/* Turn on LED and stall */
		ledStallOn();

		/* On wakeup, restore PLL power if needed */
		if (saved_clksrc == SYSCON_MAINCLKSRC_PLLOUT) {
			Chip_SYSCON_PowerUp(SYSCON_PDRUNCFG_PD_SYS_PLL);

			/* Wait for PLL lock */
			while (!Chip_Clock_IsSystemPLLLocked()) {}

			Chip_POWER_SetVoltage(Chip_Clock_GetSystemPLLOutClockRate(false));

			/* Use PLL for system clock */
			Chip_Clock_SetMainClockSource(SYSCON_MAINCLKSRC_PLLOUT);
		}
		else if (saved_clksrc == SYSCON_MAINCLKSRC_FROHF) {
			Chip_POWER_SetVoltage(saved_clkRate);
			Chip_SetupFROClocking(saved_clkRate);
		}
	}
	return 0;
}
