/*
 * @brief LPCXpresso LPC54102 board file
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
#include "retarget.h"
#include <string.h>

/*****************************************************************************
 * Private types/enumerations/variables
 ****************************************************************************/
typedef struct {
	uint8_t port;
	uint8_t pin;
} PORT_PIN_T;

static const PORT_PIN_T ledBits[] = {{0, 29}, {1, 10}, {1, 9}};
static const uint32_t ledBits_ct = sizeof(ledBits) / sizeof(PORT_PIN_T);

static const PORT_PIN_T btnBits[] = {{0, 31}, {0, 4}, {0, 24}};
static const uint32_t btnBits_ct = sizeof(btnBits) / sizeof(PORT_PIN_T);

static const PORT_PIN_T tstBits[] = {{0, 6}, {0, 7}};
static const uint32_t tstBits_ct = sizeof(tstBits) / sizeof(PORT_PIN_T);

/*****************************************************************************
 * Public types/enumerations/variables
 ****************************************************************************/

/* Clock rate on the CLKIN pin */
const uint32_t ExtClockIn = BOARD_EXTCLKINRATE;

/*****************************************************************************
 * Private functions
 ****************************************************************************/

/* Initialize the LEDs on the NXP LPC5411x LPCXpresso Board */
static void Board_LED_Init(void)
{
	uint32_t i;

	/* Pin muxing setup as part of board_sysinit */
	for (i = 0; i < ledBits_ct; i++) {
		Chip_GPIO_SetPinDIROutput(LPC_GPIO, ledBits[i].port, ledBits[i].pin);
		Chip_GPIO_SetPinState(LPC_GPIO, ledBits[i].port, ledBits[i].pin, true);
	}
}

/* 	Initialize the Test pins on the NXP LPC5411x LPCXpresso Board

	ID			Port	Pin		Board location
	TEST_0		0		6		J1-18
	TEST_1		0		7		J1-16
*/
static void Board_TestIO_Init(void)
{
	uint32_t i;

	/* Pin muxing setup as part of board_sysinit */
	for (i = 0; i < tstBits_ct; i++) {
		Chip_GPIO_SetPinDIROutput(LPC_GPIO, tstBits[i].port, tstBits[i].pin);
		Chip_GPIO_SetPinState(LPC_GPIO, tstBits[i].port, tstBits[i].pin, false);
	}
}


/* Initialize the buttons on the NXP LPC5411x LPCXpresso Board */
static void Board_Button_Init(void)
{
	uint32_t i;

	/* Pin muxing setup as part of board_sysinit */
	for (i = 0; i < btnBits_ct; i++) {
		Chip_GPIO_SetPinDIRInput(LPC_GPIO, btnBits[i].port, btnBits[i].pin);
	}
}

/* Board Debug UART Initialisation function */
static void Board_UART_Init(void)
{
	Chip_UART_Init(DEBUG_UART);
	Chip_UART_SetBaud(DEBUG_UART, DEBUGBAUDRATE);
	Chip_UART_ConfigData(DEBUG_UART, UART_CFG_DATALEN_8 | UART_CFG_PARITY_NONE | UART_CFG_STOPLEN_1);
	Chip_UART_Enable(DEBUG_UART);
	Chip_UART_TXEnable(DEBUG_UART);
}

/*****************************************************************************
 * Public functions
 ****************************************************************************/

/* Read button state */
bool Board_Button_Get(uint8_t btnNum)
{
	bool ret_val = false;

	if (btnNum < btnBits_ct) {
		ret_val = Chip_GPIO_GetPinState(LPC_GPIO, btnBits[btnNum].port, btnBits[btnNum].pin) ? false : true;
	}

	return ret_val;
}

/* Set state of all colors in RGB LED */
void Board_LED_RGB_Set(uint8_t led)
{
	uint32_t i;
	
	for (i=0; i<ledBits_ct; i++) {
		Chip_GPIO_SetPinState(LPC_GPIO, ledBits[i].port, ledBits[i].pin, !((led >> i) & 0x01));
	}
}

/* Exingush all LEDs at once */
void Board_LED_RGB_Off(void)
{
	uint32_t i;
	
	for (i=0; i<ledBits_ct; i++) {
		Chip_GPIO_SetPinState(LPC_GPIO, ledBits[i].port, ledBits[i].pin, true);
	}
}


/* Set the LED to the state of "On" */
void Board_LED_Set(uint8_t LEDNumber, bool On)
{
	if (LEDNumber < ledBits_ct) {
		Chip_GPIO_SetPinState(LPC_GPIO, ledBits[LEDNumber].port, ledBits[LEDNumber].pin, (bool) !On);
	}
}

/* Return the state of LEDNumber */
bool Board_LED_Test(uint8_t LEDNumber)
{
	if (LEDNumber < ledBits_ct) {
		return (bool) !Chip_GPIO_GetPinState(LPC_GPIO, ledBits[LEDNumber].port, ledBits[LEDNumber].pin);
	}

	return false;
}

/* Toggles the current state of a board LED */
void Board_LED_Toggle(uint8_t LEDNumber)
{
	if (LEDNumber < ledBits_ct) {
		Chip_GPIO_SetPinToggle(LPC_GPIO, ledBits[LEDNumber].port, ledBits[LEDNumber].pin);
	}
}

/* Controls the Test I/O data */
void Board_TestIO_Set(uint8_t tst_num, bool st)
{
	if (tst_num < tstBits_ct) {
		Chip_GPIO_SetPinState(LPC_GPIO, tstBits[tst_num].port, tstBits[tst_num].pin, st);
	}
}

/* Sends a character on the UART */
void Board_UARTPutChar(char ch)
{
#if defined(DEBUG_UART)
	Chip_UART_SendBlocking(DEBUG_UART, &ch, 1);
#endif
}

/* Gets a character from the UART, returns EOF if no character is ready */
int Board_UARTGetChar(void)
{
#if defined(DEBUG_UART)
	char uart_rx;
	if (Chip_UART_Read(DEBUG_UART, &uart_rx, 1) != 0) {
		return (int) uart_rx;
	}
#endif
	return EOF;
}

/* Outputs a string on the debug UART */
void Board_UARTPutSTR(char *str)
{
#if defined(DEBUG_UART)
	Chip_UART_SendBlocking(DEBUG_UART, str, strlen(str));
#endif
}

/* Initialize debug output via UART for board */
void Board_Debug_Init(void)
{
#if defined(DEBUG_UART)
	Board_UART_Init();
#endif
}

/* Set up and initialize all required blocks and functions related to the
   board hardware */
void Board_Init(void)
{
	/* INMUX and IOCON are used by many apps, enable both INMUX and IOCON clock bits here. */
	Chip_Clock_EnablePeriphClock(SYSCON_CLOCK_INPUTMUX);
	Chip_Clock_EnablePeriphClock(SYSCON_CLOCK_IOCON);

	/* Sets up DEBUG UART */
	DEBUGINIT();

	/* Initialize GPIO */
	Chip_GPIO_Init(LPC_GPIO);

	/* Initialize the LEDs. Be careful with below routine, once it's called some of the I/O will be set to output. */
	Board_LED_Init();

	/* Initialize Test I/O bits*/
	Board_TestIO_Init();
	
	/* Initialize the Buttons */
	Board_Button_Init();
}
