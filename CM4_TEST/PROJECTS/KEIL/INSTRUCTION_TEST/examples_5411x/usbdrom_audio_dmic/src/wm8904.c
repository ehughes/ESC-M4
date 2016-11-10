/*
 * @brief Wolfson WM8904 driver.
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

#include <stdlib.h>
#include <stdio.h>

#include <stdint.h>
#include <stdbool.h>

#include "board.h"
#include "delay.h"
#include "i2c_if.h"

#include "wm8904.h"

#define I2C_BUFF_SZ					16
#define	WM8904_I2C_ADDR				0x1a

static uint8_t			tx_buff[I2C_BUFF_SZ];
static uint8_t			rx_buff[I2C_BUFF_SZ];
static I2CM_XFER_T      i2c_xfer;

//------------------------------------------------------------------------------
//	WM8904 volumes and mutes
//------------------------------------------------------------------------------
static uint16_t		pga_gain_l	= 0x05,		pga_gain_r	= 0x05;
static bool			pga_mute_l	= false,	pga_mute_r	= false;
static uint16_t		adc_vol_l	= 0xc0,		adc_vol_r	= 0xc0;
static bool			adc_mute_l	= false,	adc_mute_r	= false;
static uint16_t		hp_vol_l	= 0x2d,		hp_vol_r	= 0x2d;
static bool			hp_mute_l	= false,	hp_mute_r	= false;

//------------------------------------------------------------------------------
//	WM8904 register read
//------------------------------------------------------------------------------
static bool wm8904_reg_read(uint8_t reg, uint16_t* val)
{
	bool ret_val;

	i2c_xfer.rxBuff = rx_buff;
	i2c_xfer.rxSz = 2;
	i2c_xfer.txBuff = tx_buff;
	i2c_xfer.txSz = 1;

	i2c_xfer.slaveAddr = WM8904_I2C_ADDR;
	tx_buff[0] = reg;
	i2c_xfer.status = I2CM_STATUS_OK;

	i2c_io(&i2c_xfer);
	if (i2c_xfer.status == I2CM_STATUS_OK) {
		*val = rx_buff[0]<<8 | rx_buff[1], ret_val = true;
	} else {
		*val = 0, ret_val = false;
	}
	return ret_val;
}

//------------------------------------------------------------------------------
//	WM8904 register write
//------------------------------------------------------------------------------
static bool wm8904_reg_write(uint8_t reg, uint16_t val)
{
	i2c_xfer.rxBuff = rx_buff;
	i2c_xfer.rxSz = 0;
	i2c_xfer.txBuff = tx_buff;
	i2c_xfer.txSz = 3;

	i2c_xfer.slaveAddr = WM8904_I2C_ADDR;
	tx_buff[0] = reg;
	tx_buff[1] = (val >> 8) & 0xff;
	tx_buff[2] = val & 0xff;
	i2c_xfer.status = I2CM_STATUS_OK;

	i2c_io(&i2c_xfer);
	if (i2c_xfer.status != I2CM_STATUS_OK) printf("wm8904:0x%02x 0x%04x fail\n", reg, val);

	return  (i2c_xfer.status == I2CM_STATUS_OK) ? true : false;
}

//------------------------------------------------------------------------------
//	WM8904 multi-register write
//------------------------------------------------------------------------------
static void wm8904_multi_reg_write(const REG_CONFIG_T* seq, uint32_t cnt)
{
	uint16_t rd_val;
	uint32_t i, loop_ct;
	bool r_test;

	for (i=0; i<cnt; i++) {														//	loop through all the values
		if (seq[i].reg == 0xFF) {												//	test for delay dummy-register
			loop_ct = 0;														//	clear loop count
			do {																//	if it's a dummy
				loop_ct += 1;													//	count loop iterations
				Delay_block(50);												//	sleep for 50ms
				wm8904_reg_read(0x70, &rd_val);									//	read the register
			} while (rd_val & 1);												//	while the value is a 1
			printf("delay: %dms\r\n",loop_ct*50);									//	display timing
		} else {																//	otherwise
			r_test = wm8904_reg_write(seq[i].reg, seq[i].val);					//	write the register
			if (r_test == false) break;											//	break if write fails
		}
	}
}

//------------------------------------------------------------------------------
//	WM8904 reset:
//	- reset
//	- system clock enable
//	- sequencer initialization
//	- output MCKL to GPIO1
//------------------------------------------------------------------------------
extern const REG_CONFIG_T	wm8904_reset_arr[];
extern const uint32_t		wm8904_reset_ct;
extern const REG_CONFIG_T	i2_io_arr[];
extern const uint32_t		i2_io_ct;

void wm8904_reset(void)
{
	wm8904_multi_reg_write(wm8904_reset_arr, wm8904_reset_ct);

	pga_gain_l	=	pga_gain_r		= 0x05;										//	pga gain: 0dB
	pga_mute_l	=	pga_mute_r		= false;									//	pga: not muted
	adc_vol_l	=	adc_vol_r		= 0xc0;										//	adc volume: 0dB
	adc_mute_l	=	adc_mute_r		= false;									//	adc: not muted
	hp_vol_l	=	hp_vol_r		= 0x2d;										//	headphone volume: -12dB
	hp_mute_l	=	hp_mute_r		= false;									//	headphone: not muted
}

//------------------------------------------------------------------------------
//	Initialize the codec clocks for given audio frequency
//------------------------------------------------------------------------------
bool wm8904_set_sample_rate(WM8904_FS_RATIO_T ratio, uint32_t sample_rate, uint8_t res_bits)
{
	bool ret = true;
	uint32_t tmp;

	if (sample_rate != 44100 && sample_rate != 48000) {
		return false;
	}
	
	ret &= wm8904_reg_write(WM8904_CLOCK_RATES_2, 0x00);						//	Disable SYSCLK
	Delay_block(50);															//	delay 50ms before next write
	ret &= wm8904_reg_write(WM8904_CLOCK_RATES_1, ((uint32_t) ratio << 10) | 5);	//	Set Clock ratio
	Delay_block(50);															//	delay 50ms before next write
	tmp = 3;
	if (res_bits < 32) {
		tmp = (res_bits - 16) / 4;
	}
	ret &= wm8904_reg_write(WM8904_AUDIO_INTERFACE_1, ((uint32_t) tmp << 2) | 2);	//	Set bit resolution
	Delay_block(50);															//	delay 50ms before next write

	ret &= wm8904_reg_write(WM8904_CLOCK_RATES_2, 0x1007);						//	Enable SYSCLK
	Delay_block(50);															//	delay 50ms before next write
	
	return ret;
}

//------------------------------------------------------------------------------
//	WM8904 configure
//------------------------------------------------------------------------------
void wm8904_config(WM8904_CONFIG_T cfg)
{
	wm8904_multi_reg_write(i2_io_arr, i2_io_ct);
}

//------------------------------------------------------------------------------
//	WM8904 input PGA functions
//	-- pga gain set
//	-- pga mute
//------------------------------------------------------------------------------
static void pga_update(void)
{
	uint16_t reg_val_l = pga_gain_l;											//	declare / initialize register values
	uint16_t reg_val_r = pga_gain_r;

	if (pga_mute_l == true) reg_val_l |= WM8904_LINMUTE;						//	if mutes are true, then or-in to register values
	if (pga_mute_r == true) reg_val_r |= WM8904_LINMUTE;

	wm8904_reg_write(WM8904_ANALOGUE_LEFT_INPUT_0, reg_val_l);					//	write left / right PGA mute & gain
	Delay_block(50);															//	delay 50ms before next write
	wm8904_reg_write(WM8904_ANALOGUE_RIGHT_INPUT_0, reg_val_r);
	Delay_block(50);															//	delay 50ms before next write
}

void wm8904_pga_gain(uint8_t gain)
{
	gain &= WM8904_LIN_VOL_MASK;												//	limit gain to bits [5..0]
	pga_gain_l = pga_gain_r = gain;												//	set gain
	pga_update();																//	update the hardware
}

void wm8904_pga_mute(bool mute)
{
	pga_mute_l = pga_mute_r = mute;												//	set mute
	pga_update();																//	update the hardware
}

//------------------------------------------------------------------------------
//	WM8904 input ADC vol functions
//	- ADC volume set
//	- ADC mute
//------------------------------------------------------------------------------
void adc_update(void)
{
	if (adc_mute_l == true) {
		wm8904_reg_write(WM8904_ADC_DIGITAL_VOLUME_LEFT, 0);					//	set to mute
	} else {
		wm8904_reg_write(WM8904_ADC_DIGITAL_VOLUME_LEFT, adc_vol_l);			//	set back to volume
	}
	Delay_block(50);															//	delay 50ms before next write

	if (adc_mute_r == true) {
		wm8904_reg_write(WM8904_ADC_DIGITAL_VOLUME_RIGHT, (0 | WM8904_ADC_VU));
	} else {
		wm8904_reg_write(WM8904_ADC_DIGITAL_VOLUME_RIGHT, (adc_vol_r | WM8904_ADC_VU));
	}
	Delay_block(50);															//	delay 50ms before next write
}

void wm8904_adc_vol(uint8_t vol)
{
	adc_vol_l = adc_vol_r = vol;
	adc_update();
}

void wm8904_adc_mute(bool mute)
{
	adc_mute_l = adc_mute_r = mute;
	adc_update();
}

//------------------------------------------------------------------------------
//	WM8904 headphone volume functions
//	- headphone volume set
//	- headphone mute
//------------------------------------------------------------------------------
static void hp_update(void)
{
	uint16_t reg_val_l = hp_vol_l;												//	declare / initialize register values
	uint16_t reg_val_r = hp_vol_r;

	if (hp_mute_l == true) reg_val_l |= WM8904_HPOUTL_MUTE;						//	if mutes are true, then or-in to register values
	if (hp_mute_r == true) reg_val_r |= WM8904_HPOUTR_MUTE;

	wm8904_reg_write(WM8904_ANALOGUE_OUT1_LEFT, reg_val_l);						//	update hardware
	Delay_block(50);															//	delay 50ms before next write
	wm8904_reg_write(WM8904_ANALOGUE_OUT1_RIGHT, reg_val_r | WM8904_HPOUT_VU);
	Delay_block(50);															//	delay 50ms before next write
}

void wm8904_hp_vol(uint8_t vol)
{
	hp_vol_l = hp_vol_r = vol;
	hp_update();
}

void wm8904_hp_mute(bool mute)
{
	hp_mute_l = hp_mute_r = mute;
	hp_update();
}

//------------------------------------------------------------------------------
//	WM8904 status functions
//	-- volume status
//	-- register dump (just the good ones)
//------------------------------------------------------------------------------
void wm8904_vol_status(void)
{
	printf("input pga:  gain: %d/%d, mute: %d/%d\n", pga_gain_l,pga_gain_r, pga_mute_l, pga_mute_r);
	printf("adc volume:  vol: %d/%d, mute: %d/%d\n", adc_vol_l,adc_vol_r, adc_mute_l, adc_mute_r);
	printf("hp volume:   vol: %d/%d, mute: %d/%d\n", hp_vol_l,hp_vol_r, hp_mute_l, hp_mute_r);
}

static const uint8_t dbg_reg_adr[] = {
	0x00, 0x04, 0x05, 0x06, 0x07, 0x0A, 0x0C, 0x0E, 0x0F, 0x12, 0x14,
	0x15, 0x16, 0x18, 0x19, 0x1A, 0x1B, 0x1E, 0x1F, 0x20, 0x21, 0x24,
	0x25, 0x26, 0x27, 0x28, 0x29, 0x2A, 0x2B, 0x2c, 0x2d, 0x2e, 0x2f,
	0x39, 0x3a, 0x3b, 0x3c, 0x3d, 0x43, 0x44, 0x45, 0x47, 0x48, 0x49,
	0x4a, 0x4b, 0x4c, 0x4d, 0x5a, 0x5e, 0x62, 0x68, 0x6c, 0x6d, 0x6e,
	0x6f, 0x70, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a, 0x7b, 0x7c,
	0x7e, 0x7f, 0x80, 0x81, 0x82, 0x86, 0x87, 0x88, 0x89, 0x8a, 0x8b,
	0x8c, 0x8d, 0x8e, 0x8f, 0x90, 0x91, 0x92, 0x93, 0x94, 0x95, 0x96,
	0x97, 0x98, 0x99, 0x9a, 0x9b, 0x9c, 0x9d, 0xc6, 0xf7, 0xf8
};
static const uint32_t dbg_reg_adr_ct = sizeof(dbg_reg_adr)/sizeof(uint8_t);

void wm8904_reg_dump(void)
{
	uint16_t rd_value;
	uint32_t i;

	for (i=0; i<dbg_reg_adr_ct; i++) {
		wm8904_reg_read(dbg_reg_adr[i], &rd_value);
		printf("%s", ((i & 0x07)==0) ? "\r\n" : "\t");
		printf("%02x:%04x", dbg_reg_adr[i], rd_value);
	}
	printf("\n\n");
}

