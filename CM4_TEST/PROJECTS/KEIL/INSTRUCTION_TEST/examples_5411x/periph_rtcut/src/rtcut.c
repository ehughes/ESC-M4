/*
 * @brief Real-Time clock example with Universal Time conversion
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

#include <stdlib.h>
#include <string.h>
#include "board.h"
#include "rtc_ut.h"

/** @defgroup PERIPH_RTC_UT_5411X Real-Time clock example with Universal Time conversion
 * @ingroup EXAMPLES_PERIPH_5411X
 * @include "periph_rtcut\readme.txt"
 */

/**
 * @}
 */

/*****************************************************************************
 * Private types/enumerations/variables
 ****************************************************************************/

static volatile bool rtcAlarm;

/* If your tool chain supports asctime_r, enable this definition to use it
   to generate a formatted string for the time, or the example display
   function will be used instead. */
#if defined(__CC_ARM)
#define USE_CASCTIME
#endif

/*****************************************************************************
 * Public types/enumerations/variables
 ****************************************************************************/

/*****************************************************************************
 * Private functions
 ****************************************************************************/

/* Show RTC time in UT format */
static void showTime(uint32_t rtcCount)
{
	struct tm currTime;

#ifdef USE_CASCTIME
	char tempBuff[256];
#endif

	ConvertRtcTime(rtcCount, &currTime);

#ifdef USE_CASCTIME
	DEBUGOUT(asctime_r(&currTime, tempBuff));

#else
	DEBUGOUT("Raw RTC tick value = %u\r\n", rtcCount);

	/* Todays date */
	DEBUGOUT("DATE: %02d:%02d:%04d\r\n", currTime.tm_mon + 1,
			 currTime.tm_mday, (currTime.tm_year + TM_YEAR_BASE));

	/* Current time */
	DEBUGOUT("TIME: %02d:%02d:%02d\r\n", currTime.tm_hour, currTime.tm_min, currTime.tm_sec);

	/* Day of week and year */
	DEBUGOUT("tm_wday = %01d, tm_yday = %03d\r\n", currTime.tm_wday,
			 currTime.tm_yday);
#endif

	DEBUGSTR("\r\n");
}

/*****************************************************************************
 * Public functions
 ****************************************************************************/

/**
 * @brief	RTC Interrupt Handler
 * @return	None
 */
void RTC_IRQHandler(void)
{
	uint32_t rtcStatus;

	Board_LED_Toggle(0);

	/* Get RTC status register */
	rtcStatus = Chip_RTC_GetStatus(LPC_RTC);

	/* Check RTC 1Khz match interrupt */
	if (rtcStatus & RTC_CTRL_ALARM1HZ) {
		/* Alarm */
		rtcAlarm = true;
	}

	/* Clear only latched RTC status */
	Chip_RTC_ClearStatus(LPC_RTC, (rtcStatus & RTC_CTRL_ALARM1HZ));
}

/**
 * @brief	Main program body
 * @return	int
 */
int main(void)
{
	int loop = 1;	/* Used to fix the unreachable statement warning */

	uint32_t rtcCount;

	/* Starting time for this example used to set the RTC */
	struct tm startTime = {
		56,			/* tm_sec, seconds after the minute, 0 to 59 */
		59,			/* tm_min, minutes after the hour, 0 to 59 */
		23,			/* tm_hour, hours since midnight, 0 to 23 */
		25,			/* tm_mday, day of the month, 1 to 31 */
		9,			/* tm_mon, months since January, 0 to 11 */
		(2015 - TM_YEAR_BASE),	/* tm_year, years since base year (1900) */

		/* The following 3 fields are not used by the ConvertTimeRtc() function,
		   while the ConvertRtcTime() fucntion will generate data in them from an
		   RTC tick (except tm_isdst) */
		0,			/* tm_wday, days since Sunday, 0 to 6 */
		0,			/* tm_yday, days since January 1, 0 to 365 */
		0			/* tm_isdst, Daylight Savings Time flag */
	};

	/* Setup SystemCoreClock and any needed board code */
	SystemCoreClockUpdate();
	Board_Init();
	Board_LED_Set(0, false);

	/* Turn on the RTC 32K Oscillator */
	Chip_RTC_PowerUp(LPC_RTC);

	/* Enable the RTC oscillator, oscillator rate can be determined by
	   calling Chip_Clock_GetRTCOscRate()	*/
	Chip_Clock_EnableRTCOsc();

	/* Initialize RTC driver (enables RTC clocking) */
	Chip_RTC_Init(LPC_RTC);

	/* RTC reset */
	Chip_RTC_Reset(LPC_RTC);

	/* Start RTC at a count of 0 when RTC is disabled. If the RTC is enabled, you
	   need to disable it before setting the initial RTC count. */
	Chip_RTC_Disable(LPC_RTC);

	/* COnvert tm structure to RTC tick count */
	ConvertTimeRtc(&startTime, &rtcCount);
	Chip_RTC_SetCount(LPC_RTC, rtcCount);

	/* Set alarm to wakeup in 5s */
	DEBUGOUT("Setting alarm to trigger in 5s\r\n");
	rtcCount += 5;
	Chip_RTC_SetAlarm(LPC_RTC, rtcCount);

	/* Enable RTC */
	Chip_RTC_Enable(LPC_RTC);

	/* Clear latched RTC interrupt statuses */
	Chip_RTC_ClearStatus(LPC_RTC, (RTC_CTRL_ALARM1HZ | RTC_CTRL_WAKE1KHZ));

	/* Enable RTC interrupt */
	NVIC_EnableIRQ(RTC_IRQn);

	/* Enable RTC alarm interrupt */
	Chip_RTC_EnableWakeup(LPC_RTC, (RTC_CTRL_ALARMDPD_EN | RTC_CTRL_WAKEDPD_EN));

	/* Sleep and do all the work in the RTC interrupt handler */
	while (loop) {
		/* 10 high resolution ticks that get slower each tick */
		if (rtcAlarm) {
			/* Will not reset alarm */
			DEBUGOUT("Alarm triggered, alarm reset to trigger in 5s\r\n");
			rtcCount = Chip_RTC_GetCount(LPC_RTC) + 5;
			Chip_RTC_SetAlarm(LPC_RTC, rtcCount);
			rtcAlarm = false;
		}

		/* Show RTC time in UT format */
		showTime(Chip_RTC_GetCount(LPC_RTC));

		/* Sleep while waiting for alarm */
		__WFI();
	}
	return 0;
}
