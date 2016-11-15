/*
 * @brief Main module
 *
 * @note
 * Copyright(C) NXP Semiconductors, 2013
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
#include <string.h>
#include "app_usbd_cfg.h"
#include "audio_usbd.h"
#include "audio_codec.h"
#include "Power_Tasks.h"
//#include "ms_timer.h"

/*****************************************************************************
 * Private types/enumerations/variables
 ****************************************************************************/

/*****************************************************************************
 * Public types/enumerations/variables
 ****************************************************************************/

extern ErrorCode_t usbd_init(void);

/*****************************************************************************
 * Private functions
 ****************************************************************************/

/*****************************************************************************
 * Public functions
 ****************************************************************************/

/**
 * @brief	main routine for blinky example
 * @return	Function should not exit.
 */
int main(void)
{
	ErrorCode_t ret = LPC_OK;

	SystemCoreClockUpdate();
	/* Initialize board and chip */
	Board_Init();

	/* Init system timer block */
//	systick_init();
//	Chip_GPIO_SetPinDIROutput(LPC_GPIO, 1, 7);

#if defined(LOWPOWEROPERATION)
	/* Setup up basic power prior to USB setup. USB setup also sets up
	 * the audio interfaces and any necessary interface specific pin
	 * muxing. */
	Power_Init();
#endif

	/* Initialize USB subsystem */
	ret = usbd_init();

	while (ret == LPC_OK) {
		/* do codec tasks differed to task level by USB audio class handler */
		Codec_Tasks();
#if defined(LOWPOWEROPERATION)
		/* Power states */
		Power_Tasks();
#else
		/* Sleep until next IRQ happens */
		__WFI();
#endif
	}

	while (1) {}
}

void HardFault_Handler(void)
{
	__BKPT(0);

	while (1) {	// enter endless loop otherwise

	}
}
