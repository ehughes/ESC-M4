/*
 * @brief OLED (implementation file)
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

#include <stdio.h>
#include <stdarg.h>
#include <stdint.h>
#include <stdbool.h>

#include "delay.h"

#include "oled.h"
#include "oled_io.h"

#define	BUFF_LEN	32

//
//	Initialization sequence from:
//		Visionox Product Specification
//		Product Name: VGM128128A7W01
//		Product Code: M01500
//
static uint8_t init_seq[] = {
	0xae,		//	Display OFF
	0xd5,		//	Set D-clock
	0x50,		//	100Hz
	0x20,		//	Set row address
	0x81,		//	Set contrast control
	0xc0,
	0xa0,		//	Segment remap
	0xa4,		//	Set Entire Display ON
	0xa6,		//	Normal display
	0xad,		//	Set external VPP
	0x80,
	0xc0,		//	Set Common scan direction
	0xd9,		//	Set phase length
	0x25,
	0xdb,		//	Set Vcomh voltage
	0x28,		//	0.687*VPP
//	0xaf		//	Display ON
};
static const uint32_t init_seq_ct = sizeof(init_seq) / sizeof(uint8_t);

static void WriteCmd(uint8_t cmd)
{
	OLED_IO_cmd();
	OLED_IO_write(cmd);
}

static void WriteDat(uint8_t data)
{
	OLED_IO_data();
	OLED_IO_write(data);
}

static void SetPos(uint8_t x, uint8_t y)
{ 
	WriteCmd(0xb0+y);
	WriteCmd(((x&0xf0)>>4)|0x10);
	WriteCmd((x&0x0f)|0x10);
}

static void Fill(uint8_t fill_Data)
{
	uint8_t m,n;

	for(m=0; m<16; m++) {
		WriteCmd(0xb0+m);				//	page0-page1
		WriteCmd(0x00);					//	low column start address
		WriteCmd(0x10);					//	high column start address
		for(n=0; n<128; n++)
			WriteDat(fill_Data);
	}
}

void OLED_init(void)
{
	uint32_t i;

	OLED_IO_vpp(enable);				//	power panel
	OLED_IO_reset(assert);				//	start reset
	delay_us(20);						//	20uS delay
	OLED_IO_reset(deassert);			//	release reset
	delay_ms(100);						//	wait for SH1107 to come out of reset

	for (i=0; i<init_seq_ct; i++) {		//	loop through init sequence
		WriteCmd(init_seq[i]);			//	write the command
	}
	OLED_cls();							//	clear oled
	WriteCmd(0xaf);						//	enable OLED
}


void OLED_cls(void)
{
	Fill(0x00);
}

void OLED_on(void)
{
	WriteCmd(0x8d);						//	set charge pump
	WriteCmd(0x14);						//	enable charge pump
	WriteCmd(0xaf);						//	enable OLED
}

void OLED_off(void)
{
	WriteCmd(0x8d);						//	set charge pump
	WriteCmd(0x10);						//	disable charge pump
	WriteCmd(0xae);						//	disable OLED
}

static void oled_write_64(uint8_t* pblk)
{
	uint8_t data_out=0;
	uint8_t *data_in;

	int32_t x,y;

	for (x=7; x>=0; x--) {
		data_out = 0;
		for (y=0; y<128; y+=16) {
			data_in = pblk+y;
			data_out >>= 1;
			if (*data_in & 1<<x) data_out |= 0x80;
		}
		WriteDat(data_out);
	}
}

void OLED_update_fb(uint8_t* pfb)
{
	uint32_t	y_idx, x_idx;
	uint8_t		*pblk;

	for (y_idx=0; y_idx<16; y_idx+=1) {
		SetPos(0,y_idx);
		for (x_idx=0; x_idx<16; x_idx+=1) {
			pblk = pfb + x_idx + (y_idx * 128);
			oled_write_64(pblk);
		}
	}
}
