/*
 * @brief OLED example
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

#include <stdarg.h>

#include "board.h"

#include "lpc_swim.h"
#include "lpc_swim_font.h"
#include "lpc_swim_image.h"
#include "lpc_rom8x16.h"
#include "lpc_winfreesystem14x16.h"
#include "lpc_x6x13.h"

#include "delay.h"

#include "oled.h"
#include "oled_io.h"

/*****************************************************************************
 * Private types/enumerations/variables
 ****************************************************************************/
#define TICKRATE_HZ			1000
#define	LED_RED				0
#define	LED_BLUE			1
#define	LED_GREEN			2

#define	BUFF_LEN			32

#define	SYS_EVENT_TICK		0x0001			// update tick
#define	SYS_EVENT_BALL		0x0002			// update ball
#define	SYS_EVENT_LOGO		0x0004			// update logo
#define	SYS_EVENT_BUTTON	0x0010			// read buttons
#define	SYS_EVENT_DISPLAY	0x0100			// update display

#define	DISPLAY_WIDTH		128
#define	DISPLAY_HEIGHT		128

static uint32_t		tick_ct = 0;
static uint32_t		sys_event = 0;
static uint8_t		frame_buffer[(DISPLAY_HEIGHT * DISPLAY_WIDTH)/sizeof(uint8_t)];
static char			str_buffer[64];
static int			ballx, bally, balldx, balldy;

/*****************************************************************************
 * Button state machine
 ****************************************************************************/
static uint32_t bs_curr = 0;
static uint32_t bs_prev = 0;
static uint32_t bs_act = 0;

void button_sm(SWIM_WINDOW_T* w)
{
	bs_curr = 0;
	bs_curr |= Board_Button_Get(0) ? 0x01 : 0x00;
	bs_curr |= Board_Button_Get(1) ? 0x02 : 0x00;
	bs_curr |= Board_Button_Get(2) ? 0x04 : 0x00;

	bs_prev ^= bs_curr;
	if (bs_prev) {
		printf("button status: %04x\r\n", bs_curr);
		if (bs_curr & 0x01) bs_act ^= 0x01;
		if (bs_curr & 0x02) bs_act ^= 0x02;
		if (bs_curr & 0x04) bs_act ^= 0x04;
	}
	bs_prev = bs_curr;
}

/*****************************************************************************
 * Private functions
 ****************************************************************************/
static void tick_update(SWIM_WINDOW_T* w)
{
	sprintf(str_buffer, "Tick #%d", tick_ct/1000);
}
static void tick_display(SWIM_WINDOW_T* w)
{
	swim_set_xy(w, 34, 78);
	swim_put_text(w, str_buffer);
}

static void ball_init(void)
{
  ballx		= 0;
  bally		= 0;
  balldx	= balldy	= 6;
}
static void ball_update(SWIM_WINDOW_T* w)
{
	ballx += balldx;
	if(ballx >= w->xvsize)
		balldx*=-1,ballx+=balldx;
	if(ballx < 0)
		balldx*=-1,ballx+=balldx;

	bally += balldy;
	if(bally >= w->yvsize)
		balldy*=-1,bally+=balldy;
	if(bally < 0)
		balldy*=-1,bally+=balldy;
}
static void ball_display(SWIM_WINDOW_T* w)
{
	swim_set_pen_color(w, WHITE);
	swim_set_fill_color(w, WHITE);
	swim_put_diamond(w, ballx, bally, 4, 4);
}

static uint8_t o_val=0;
extern const unsigned char NXP_outline[];
extern const unsigned char ferrari_275[];
static void logo_init(void)
{
	o_val = 0;
}
static void logo_update(SWIM_WINDOW_T* w)
{
	o_val = (o_val == 7) ? 0 : o_val+1;
}
static void logo_display(SWIM_WINDOW_T* w)
{
	switch (o_val) {
	case 0:
		swim_put_win_image(w, (COLOR_T*)NXP_outline+192, 128, 116, 0, NOROTATION);
		break;
	case 1:
		swim_put_win_image(w, (COLOR_T*)NXP_outline, 128, 128, 0, LEFT);
		break;
	case 2:
		swim_put_win_image(w, (COLOR_T*)NXP_outline, 128, 116, 0, INVERT);
		break;
	case 3:
		swim_put_win_image(w, (COLOR_T*)NXP_outline, 128, 128, 0, RIGHT);
		break;

	case 4:
		swim_put_win_image(w, (COLOR_T*)ferrari_275, 512, 512, 1, NOROTATION);
		break;
	case 5:
		swim_put_win_image(w, (COLOR_T*)ferrari_275, 512, 512, 1, LEFT);
		break;
	case 6:
		swim_put_win_image(w, (COLOR_T*)ferrari_275, 512, 512, 2, INVERT);
		break;
	case 7:
		swim_put_win_image(w, (COLOR_T*)ferrari_275, 512, 512, 3, RIGHT);
		break;

	}
}

/*****************************************************************************
 * Interrupt handler functions
 *	SYS_EVENT_TICK		0x0001			// update tick
 *	SYS_EVENT_BALL		0x0002			// update ball
 *	SYS_EVENT_LOGO		0x0004			// update logo
 *	SYS_EVENT_BUTTON	0x0010			// read buttons
 *	SYS_EVENT_DISPLAY	0x0100			// update display
 ****************************************************************************/
void SysTick_Handler(void)
{
	tick_ct += 1;
	if ((tick_ct % 1000) == 0) {												/* Frequency: 1Hz */
		sys_event |= SYS_EVENT_TICK;
	}

	if ((tick_ct % 50) == 0) {													/* Frequency: 20Hz */
		sys_event |= SYS_EVENT_BALL;
	}

	if ((tick_ct % 2000) == 0) {												/* Frequency: 1/2Hz */
		sys_event |= SYS_EVENT_LOGO;
	}

	if ((tick_ct % 20) == 0) {													/* Frequency: 50Hz */
		sys_event |= SYS_EVENT_BUTTON;
	}

	if ((tick_ct % 50) == 1) {													/* Frequency: 20Hz */
		sys_event |= SYS_EVENT_DISPLAY;
	}
}

/*****************************************************************************
 * main function
 ****************************************************************************/
int main(void)
{
	int loop = 1;	/* Used to fix the unreachable statement warning */

	SWIM_WINDOW_T	win;
	COLOR_T*		pfb = frame_buffer;

	SystemCoreClockUpdate();
	Board_Init();
	SysTick_Config(SystemCoreClock / TICKRATE_HZ);

	OLED_IO_hw_init();
	OLED_init();

    swim_window_open(&win, DISPLAY_WIDTH, DISPLAY_HEIGHT,
		pfb, 0, 0, (DISPLAY_WIDTH - 1), (DISPLAY_HEIGHT - 1),
		1, WHITE, BLACK, BLACK);

	swim_set_font(&win, (FONT_T *)&font_x6x13);
	swim_set_title(&win, "  NXP SWIM Library  ", BLACK);
	swim_update_display(&win);
	swim_set_font(&win, (FONT_T *)&font_winfreesys14x16);

	ball_init();
	logo_init();
	while (loop) {
		if (sys_event & SYS_EVENT_TICK) {
			sys_event &= ~SYS_EVENT_TICK;
			TimerTick();
			tick_update(&win);
		}

		if (sys_event & SYS_EVENT_BALL) {
			sys_event &= ~SYS_EVENT_BALL;
			ball_update(&win);
		}

		if (sys_event & SYS_EVENT_LOGO) {
			sys_event &= ~SYS_EVENT_LOGO;
			logo_update(&win);
		}

		if (sys_event & SYS_EVENT_BUTTON) {
			sys_event &= ~SYS_EVENT_BUTTON;
			button_sm(&win);
		}

		if (sys_event & SYS_EVENT_DISPLAY) {
			sys_event &= ~SYS_EVENT_DISPLAY;
			swim_clear_screen(&win, BLACK);
			if (bs_act & 0x04)
				logo_display(&win);
			if (bs_act & 0x01)
				ball_display(&win);
			if (bs_act & 0x02)
				tick_display(&win);
			swim_update_display(&win);
		}

		__WFI();
	}
	return 0;
}
