/*
 * @brief delay (implementation file)
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

#include <stdint.h>
#include "board.h"
#include "delay.h"

static uint32_t timer_tick = 0;

void delay_us(uint32_t delay)
{
	volatile uint32_t i, timer;

	for (i=0; i<(delay*40); i++)
		timer += 1;
}

void delay_ms(uint32_t delay)
{
	uint32_t i;

	for (i=0; i<delay; i++)
		delay_us(1000);
}

void TimerTick(void)
{
	if (timer_tick > 0)
		timer_tick -= 1;
}
void TimerDelay(uint32_t delay)
{
	timer_tick = delay;
	while (timer_tick != 0) {
		__WFI();
	}
}
