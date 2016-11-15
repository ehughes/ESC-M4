/*
 * @brief FLASH IAP programming using IAP commands
 * to write to FLASH memory
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

#include <stdio.h>
#include <string.h>

#include "board.h"

/** @defgroup PERIPH_FLASHIAP_5411X FLASH read/write/signature example
 * @ingroup EXAMPLES_PERIPH_5411X
 * @include "periph_flashiap\readme.txt"
 */

/**
 * @}
 */

/*****************************************************************************
 * Private types/enumerations/variables
 ****************************************************************************/

#define TICKRATE_HZ (10)	/* 10 ticks per second */

/* Last sector address */
#define START_ADDR_LAST_SECTOR      0x00038000

/* LAST SECTOR */
#define IAP_LAST_SECTOR             7

/* Number of bytes to be written to the last sector */
#define IAP_NUM_BYTES_TO_WRITE      1024

/* Size of each sector */
#define SECTOR_SIZE                 32768

/* Number elements in array */
#define ARRAY_ELEMENTS          (IAP_NUM_BYTES_TO_WRITE / sizeof(uint32_t))

/* Data array to write to flash */
static uint32_t src_iap_array_data[ARRAY_ELEMENTS];

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
 * @brief	Handle interrupt from SysTick timer
 * @return	Nothing
 */
void SysTick_Handler(void)
{
	Board_LED_Toggle(0);
}

void LED_off(void)
{
	Board_LED_Set(0, false);
	Board_LED_Set(1, false);
	Board_LED_Set(2, false);
}

void terminal_reset(void)
{
	DEBUGOUT("\x1B[2J");			// clear screen
	DEBUGOUT("\x1B[0m");			// color mode reset
	DEBUGOUT("\x1B[1;1H");			// set position to 1,1
}

void err_check(uint8_t ret_code)
{
	if (ret_code == IAP_CMD_SUCCESS) {
		DEBUGOUT("OK!\r\n");
	} else {
		DEBUGOUT("failed. Return code is: 0x%02x\r\n", ret_code);
	}
}

/**
 * @brief	Main program body
 * @return	Always returns 0
 */
int main(void)
{
	int loop = 1;	/* Used to fix the unreachable statement warning */

	int i;
	uint8_t ret_code;
	uint32_t part_id;

	/* Generic Initialization */
	SystemCoreClockUpdate();
	Board_Init();
	LED_off();
	terminal_reset();
	DEBUGOUT("FLASH IAP demo\r\n");

	/* Enable SysTick Timer */
	SysTick_Config(SystemCoreClock / TICKRATE_HZ);

	/* Initialize the array data to be written to FLASH */
	DEBUGOUT("  Initialize RAM array\r\n");
	for (i = 0; i < ARRAY_ELEMENTS; i++) {
		src_iap_array_data[i] = 0x11223340 + i;
	}

	/* Read Part Identification Number*/
	part_id = Chip_IAP_ReadPID();
	DEBUGOUT("  Part ID: 0x%x\r\n", part_id);

	/* Disable interrupt mode so it doesn't fire during FLASH updates */
	__disable_irq();

	/* IAP Flash programming */
	/* Prepare to erase last sector */
	DEBUGOUT("  Prepare sector: ");
	ret_code = Chip_IAP_PreSectorForReadWrite(IAP_LAST_SECTOR, IAP_LAST_SECTOR);
	err_check(ret_code);
	
	/* Erase last sector */
	DEBUGOUT("  Erase sector: ");
	ret_code = Chip_IAP_EraseSector(IAP_LAST_SECTOR, IAP_LAST_SECTOR);
	err_check(ret_code);

	/* Blank check sector */
	DEBUGOUT("  Blank check sector: ");
	ret_code = Chip_IAP_BlankCheckSector(IAP_LAST_SECTOR, IAP_LAST_SECTOR);
	err_check(ret_code);

	/* Prepare to write last sector */
	DEBUGOUT("  Prepare sector: ");
	ret_code = Chip_IAP_PreSectorForReadWrite(IAP_LAST_SECTOR, IAP_LAST_SECTOR);
	err_check(ret_code);

	/* Write last sector */
	DEBUGOUT("  Write sector: ");
	ret_code = Chip_IAP_CopyRamToFlash(START_ADDR_LAST_SECTOR, src_iap_array_data, IAP_NUM_BYTES_TO_WRITE);
	err_check(ret_code);

	/* Re-enable interrupt mode */
	__enable_irq();

	/* Compare memory */
	DEBUGOUT("  Compare sector to RAM block: ");
	i = memcmp((const void *)START_ADDR_LAST_SECTOR, src_iap_array_data, IAP_NUM_BYTES_TO_WRITE);
	ret_code = (i == 0) ? IAP_CMD_SUCCESS : IAP_COMPARE_ERROR;
	err_check(ret_code);

	/* Endless loop */
	while (loop) {
		__WFI();
	}
	return 0;
}
