/*
 * @brief OLED (header file)
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

typedef enum { ASCII_8x6, ASCII_8x16 } FONT_ID;

typedef struct {
	uint8_t		x;
	uint8_t		y;
	char*		s;
	bool		cr;
	FONT_ID		font;
} DISP_STRING_T;

typedef struct {
	uint8_t		x_start;
	uint8_t		y_start;
	uint8_t		x_end;
	uint8_t		y_end;
} DISP_LINE_T;

typedef struct {
	uint8_t		x_start;
	uint8_t		y_start;
	uint8_t		x_end;
	uint8_t		y_end;
	const uint8_t*	data;
} DISP_BMP_T;

void OLED_init(void);

void OLED_on(void);
void OLED_off(void);

void OLED_cls(void);
void OLED_draw_str(DISP_STRING_T* str);
void OLED_update_fb(uint8_t* fb);
void OLED_draw_bmp(DISP_BMP_T* bmp);
void OLED_printf(DISP_STRING_T* f, ...);

