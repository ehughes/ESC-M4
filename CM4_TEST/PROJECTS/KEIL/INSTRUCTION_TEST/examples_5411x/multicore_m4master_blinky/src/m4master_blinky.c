/*
 * @brief Multicore blinky example (Master)
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
#include <string.h>

/** @defgroup PERIPH_M4MASTER_5410X Multicore blinky example (M4 core as master)
 * @ingroup EXAMPLES_CORE_5410X
 * @include "multicore_m4master_blinky\readme.txt"
 */

/**
 * @}
 */

/*****************************************************************************
 * Private types/enumerations/variables
 ****************************************************************************/

#define TICKRATE_HZ (50)	/* 50 ticks per second */

static MBOX_IDX_T myCoreBox, otherCoreBox;
static int cnt25;

#ifdef __CODE_RED
extern uint32_t __core_m0slave_START__[];
#define M0_BOOT_STACKADDR &__core_m0slave_START__[0]
#define M0_BOOT_ENTRYADDR &__core_m0slave_START__[1]

#else
/* The M0 slave core's boot code is loaded to execute at address 0x2000.
   These address contain the needed M0 boot entry point and the M0 stack
     pointer that the M4 master core sets up for boot. */
/* When booting from RAM this will be overriden by project setting */
#ifndef M0_BOOT_STACKADDR
#define M0_BOOT_STACKADDR           0x20000
#endif

/* When booting from RAM this will be overriden by project setting */
#ifndef M0_BOOT_ENTRYADDR
#define M0_BOOT_ENTRYADDR           ((uint32_t) (M0_BOOT_STACKADDR) +4)
#endif
#endif

/*****************************************************************************
 * Public types/enumerations/variables
 ****************************************************************************/

/* Made global to better debug the LED states */
volatile uint32_t sharedLEDStates;

/*****************************************************************************
 * Private functions
 ****************************************************************************/

/* Hardware mutex take function */
static void mutexTake(void)
{
	/* Wait forever until we can get the mutex */
	while (Chip_MBOX_GetMutex(LPC_MBOX) == 0) {}
}

/* Hardware mutex put function */
static void mutexGive(void)
{
	Chip_MBOX_SetMutex(LPC_MBOX);
}

/* Toggle the LED bit for a core */
static void ledToggleBit(int bitLoc)
{
	sharedLEDStates = sharedLEDStates ^ (1 << bitLoc);
}

/* Update LED states for LED 0 and LED 1 based on shared value bit states */
static void updateLEDStates(void)
{
	int i;

	for (i = 0; i <= 1; i++) {
		Board_LED_Set(i, (bool) (((sharedLEDStates >> i) & 1) != 0));
	}
}

/*****************************************************************************
 * Public functions
 ****************************************************************************/

/**
 * @brief	Handle interrupt from SysTick timer
 * @return	Nothing
 */
void SysTick_Handler(void)
{
	cnt25++;
	if (cnt25 >= 25) {
		/* Toggle LED state for this CPU core */
		mutexTake();
		ledToggleBit(0);

		/* Give slave core the address of the shared LED value. The slave core
		   will alter the address directly in memory for the 2nd LED state */
		Chip_MBOX_SetValue(LPC_MBOX, otherCoreBox, (uint32_t) &sharedLEDStates);
		mutexGive();
		cnt25 = 0;
	}
}

/**
 * @brief	Handle interrupt from mailbox
 * @return	Nothing
 */
void MAILBOX_IRQHandler(void)
{
	/* Update LED states */
	updateLEDStates();

	/* Clear this MCU's mailbox */
	Chip_MBOX_ClearValueBits(LPC_MBOX, myCoreBox, 0xFFFFFFFF);
}

/**
 * @brief	main routine for blinky example
 * @return	Function should not exit.
 */
int main(void)
{
	int loop = 1;	/* Fixes unreachable statement warning */
	uint32_t *jumpAddr, *stackAddr;

	SystemCoreClockUpdate();
	Board_Init();

	/* Get the mailbox identifiers to the core this code is running and the
	   other core */
	myCoreBox = MAILBOX_CM4;
	otherCoreBox = MAILBOX_CM0PLUS;

	/* Initialize mailbox with initial mutex free (master core only) */
	Chip_MBOX_Init(LPC_MBOX);
	mutexGive();

	/* Setup shared memory location for LED states, bit 0 = LED 0 state,
	   bit 1 = LED state 1. Master core controls bit 0, while slave core
	   controls bit 1. Only master can set the LED states. */
	sharedLEDStates = 0x01;

	/* Enable mailbox interrupt */
	NVIC_EnableIRQ(MAILBOX_IRQn);

	/* Enable SysTick Timer only on the master */
	SysTick_Config(SystemCoreClock / TICKRATE_HZ);

	/* If the image is supposed to be in RAM copy from flash */
#ifdef M0_IMAGE_IN_RAM
#ifdef __CODERED__
#warning "LPCXpresso automatically copies M0 image"
#endif
	/* M0 RAM loading section; if m0_blinky_ram project is not built this section will throw linker error */
	{
		#ifdef __CC_ARM
		/* KEIL uVISION 5: These symbols come from incbin.s */
		extern uint32_t m0_image_start, m0_image_end;
		uint32_t m0_image_size = (uint32_t) &m0_image_end - (uint32_t) &m0_image_start;
		#elif defined(__ICCARM__)
		/* IAR EWARM: These symbols and section come from "input" tab of "linker" project option */
		#pragma section = "m0_image"
		extern uint32_t m0_image_start;
		uint32_t m0_image_size = (uint32_t) __section_end("m0_image") - (uint32_t) &m0_image_start;
		#endif
		memcpy((void *) M0_BOOT_STACKADDR, (uint32_t *) &m0_image_start, m0_image_size);
	}
#endif

	/* Boot M0 core, using reset vector and stack pointer from the CM0+
	   image in FLASH. */
	stackAddr = (uint32_t *) (*(uint32_t *) M0_BOOT_STACKADDR);
	jumpAddr = (uint32_t *) (*(uint32_t *) M0_BOOT_ENTRYADDR);
	Chip_CPU_CM0Boot(jumpAddr, stackAddr);

	while (loop) {
		__WFI();
	}

	return 0;
}
