/*
 * @brief Wolfson WM8904 configuration file.
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
#include <stdbool.h>
#include "wm8904.h"
#include "board.h"
#include "audio_codec.h"
#include "app_usbd_cfg.h"

//
//	Configuration Notes:
//	-- MCLK is 24.576MHz -- this is coming from the Niobe-2.
//	-- BCLK is an input
//	-- LRCLK clock is also an input
//	-- The SYSCLK/fs ratio is 512
//	-- Both ADC_OSR128 and DAC_OSR128 are set to 1 
//
const REG_CONFIG_T i2_io_arr[] = {
	{ 0x14, 0xA45F },		//	TOCLK_RATE_DIV16=0, TOCLK_RATE_x4=1, SR_MODE=0, MCLK_DIV=1 (Required for MMCs: SGY, KRT see erratum CE000546)
	{ 0x0C, 0x0003 },		//	INL_ENA=1, INR ENA=1
	{ 0x0E, 0x0003 },		//	HPL_PGA_ENA=1, HPR_PGA_ENA=1
	{ 0x12, 0x000F },		//	DACL_ENA=1, DACR_ENA=1, ADCL_ENA=1, ADCR_ENA=1
	{ 0x0a, 0x0001 },		//	ADC_OSR128=1
	{ 0x15, 0x1405 },		//	CLK_SYS_RAT=0101 (512/fs) SAMPLE_RATE=101 (44.1kHz /48kHz)
	{ 0x18, 0x0050 },		//	DACL_DATINV=0, DACR_DATINV=0, DAC_BOOST=00, LOOPBACK=0, AIFADCL_SRC=0, AIFADCR_SRC=1, AIFDACL_SRC=0, AIFDACR_SRC=1, ADC_COMP=0, ADC_COMPMODE=0, DAC_COMP=0, DAC_COMPMODE=0
	{ 0x19, 0x0002 },		//	BCLK_DIR=0 (input), AIF_WL=00 (16-bits)
	{ 0x1a, 0x000c },		//	OPCLK_DIV=0 (sysclk), BCLK_DIV=0c (sysclk/16)
	{ 0x1b, 0x0020 },		//	LRCLK_DIR=0 (input), LRCLK_RATE=0010_0000_0000 (BCLK / 32)
	{ 0x21, 0x0046 },		//	DAC_MONO=0, DAC_SB_FILT-0, DAC_MUTERATE=0, DAC_UNMUTE RAMP=0, DAC_OSR128=1, DAC_MUTE=0, DEEMPH=11 (48kHz)
	{ 0x2E, 0x0014 },		//	INL_CM_ENA=0, L_IP_SEL_N=10, L_IP_SEL_P=01, L_MODE=00
	{ 0x2F, 0x0014 },		//	INR CM_ENA=0, R_IP_SEL_N=10, R_IP_SEL_P=01, R_MODE=00
	{ 0x2C, 0x0005 },		//	LINMUTE=0, LIN_VOL=0_0101
	{ 0x2D, 0x0005 },		//	RINMUTE=0, RIN VOL=0_0101 LINEOUTL RMV SHORT-1, LINEOUTL ENA_OUTP=1, LINEOUTL_ENA_DLY=1, LINEOUTL_ENA=1, LINEOUTR_RMV_SHORT-1, LINEOUTR_ENA_OUTP=1,
	{ 0x3D, 0x0000 },		//	HPL_BYP_ENA=0, HPR_BYP_ENA=0, LINEOUTL_BYP ENA=0, LINEOUTR_BYP ENA=0

	{ 0x39, 0x0039 },		//	HPOUTL_MUTE=0, HPOUT_VU=0, HPOUTLZC=0, HPOUTL_VOL=11_1001
	{ 0x3A, 0x0039 },		//	HPOUTR_MUTE=0, HPOUT_VU=0, HPOUTRZC=0, HPOUTR_VOL=11_1001

	{ 0x43, 0x0003 },		//	Enable DC servos for headphone out

	{ 0x5A, 0x00FF },		//	HPL_RMV_SHORT=1, HPL_ENA_OUTP=1, HPL_ENA_DLY=1, HPL_ENA=1, HPR_RMV_SHORT=1, HPR_ENA_OUTP=1, HPR_ENA_DLY=1, HPR_ENA=1
	{ 0x68, 0x0001 },		//	CP_DYN_PWR=1
	{ 0x62, 0x0001 },		//	CP_ENA=1
};
const uint32_t i2_io_ct = sizeof(i2_io_arr)/sizeof(REG_CONFIG_T);

const REG_CONFIG_T	wm8904_reset_arr[] = {
    { 0x00, 0x0000}, 					//	SW Reset
    { 0x16, 0x000F}, 					//	Clock Rates 2(16H):      0006  MCLK_INV=0, SYSCLK_SRC=0, TOCLK_RATE=0, OPCLK_ENA=1, CLK_SYS_ENA=1, CLK_DSP_ENA=1, TOCLK_ENA=1

    /* execute default start=up sequence */
    { 0x6C, 0x0100},					//	Write Sequencer 0(6CH):  0100  WSEQ_ENA=1, WSEQ_WRITE_INDEX=0_0000
    { 0x6F, 0x0100},					//	Write Sequencer 3(6FH):  0100  WSEQ_ABORT=0, WSEQ_START=1, WSEQ_START_INDEX=00_0000
    { 0xFF, 500},						//	Up to 500ms pause for write sequencer to finish before further writes
};
const uint32_t wm8904_reset_ct = sizeof(wm8904_reset_arr)/sizeof(REG_CONFIG_T);


/******************* CODEC HARDWARE & USB INTERFACE AREA *************************/

/* Codec hardware init */
ErrorCode_t wm8904_init(void)
{
	extern const CodecInterface_t g_wm8904Ctrl;
	wm8904_reset();
	wm8904_config(CONFIG_DIGITAL_IO);
	wm8904_set_sample_rate(MCLK_FS_256X, DEF_SAMPLE_RATE, DEF_RES_BITS);
	wm8904_pga_gain(0x5);														//	max out input gain (for electret microphone)
	wm8904_adc_vol(0xb0);														//	set to -6dB
	wm8904_hp_vol(g_wm8904Ctrl.volumeDef);										//	normalize gain (0dB) for headphone output
//	wm8904_reg_dump();															//	display WM8904 registers (just the good ones)
	printf("init\n");
	return LPC_OK;
}

/* Codec hardware suspend */
ErrorCode_t wm8904_suspend(void)
{
	printf("suspend\n");
	return LPC_OK;
}

/* Codec hardware resume */
ErrorCode_t wm8904_resume(void)
{
	printf("resume\n");
	return LPC_OK;
}

/* Audio mute in codec hardware */
ErrorCode_t wm8904_mute(uint32_t x)
{
	printf("mute\n");
	wm8904_hp_mute(x);
	return LPC_OK;
}

/* Audio headphone volume set */
ErrorCode_t wm8904_setVolume(int16_t vol)
{
	printf("vol\n");
	wm8904_hp_vol(vol);
	return LPC_OK;
}

ErrorCode_t wm8904_setSampleRate(uint32_t rate)
{
	printf("sample\n");
	if (wm8904_set_sample_rate(MCLK_FS_512X, rate, DEF_RES_BITS))
		return LPC_OK;
	return ERR_FAILED;
}

/* Codec interface structure */
const CodecInterface_t g_wm8904Ctrl = {
	0x0000,	// volumeMin; -57 dB
	0x003F,	// volumeMax; +6 dB
	0x0001,	// volumeRes; 1 dB
	0x0039,	// volumeDef; 0 dB

	wm8904_init,
	wm8904_suspend,
	wm8904_resume,
	wm8904_mute,
	wm8904_setVolume,
	wm8904_setSampleRate,
};
