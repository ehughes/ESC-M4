/*
 * @brief Wolfson WM8904 configuration.
 *	Based on WM8904-6201-CS36-M-REV1 example configurations
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

//------------------------------------------------------------------------------
//	title:	IN2L/R to headphones L/R (analog loop-back)
//	input:	IN2[LR]
//	output:	LINEOUT[LR]
//	path:	IN2[LR] --> PGA --> BYPASS --> line-out/headphone-out
//------------------------------------------------------------------------------
//
const REG_CONFIG_T i2_abp_hp_arr[] = {
	{ 0x14, 0x845E },		//	TOCLK_RATE_DIV16=0, TOCLK_RATE_x4=0, SR_MODE=0, MCLK_DIV=0 (Required for MMCs: SGY, KRT see erratum CE000546)
	{ 0x0C, 0x0003 },		//	INL_ENA=1, INR_ENA=1
	{ 0x0E, 0x0003 },		//	HPL_PGA_ENA=1, HPR_PGA_ENA=1
	{ 0x0F, 0x0003 },		//	LINEOUTL_PGA_ENA=1, LINEOUTR_PGA_ENA=1
	{ 0x2E, 0x0014 },		//	INL_CM_ENA=0, L_IP_SEL_N=01, L_IP_SEL_P=01, L_MODE=00
	{ 0x2F, 0x0014 },		//	INR CM_ENA=0, R_IP_SEL_N=01, R_IP_SEL_P=01, R_MODE=00
	{ 0x2C, 0x0005 },		//	LINMUTE=0, LIN_VOL=0_0101
	{ 0x2D, 0x0005 },		//	RINMUTE=0, RIN VOL=0_0101
	{ 0x3D, 0x000f },		//	HPL_BYP_ENA=1, HPR_BYP_ENA=1, LINEOUTL_BYP ENA=1, LINEOUTR_BYP ENA=1

	{ 0x39, 0x0039 },		//	HPOUTL_MUTE=0, HPOUT_VU=0, HPOUTLZC=0, HPOUTL_VOL=11_1001
	{ 0x3A, 0x0039 },		//	HPOUTR_MUTE=0, HPOUT_VU=0, HPOUTRZC=0, HPOUTR_VOL=11_1001

	{ 0x5A, 0x00FF },		//	HPL_RMV_SHORT=1, HPL_ENA_OUTP=1, HPL_ENA_DLY=1, HPL_ENA=1, HPR_RMV_SHORT=1, HPR_ENA_OUTP=1, HPR_ENA_DLY=1, HPR_ENA=1
	{ 0x5E, 0x00FF },		//	LINEOUTL_RMV_SHORT=1, LINEOUTL_ENA_OUTP=1, LINEOUTL_ENA_DLY=1, LINEOUTL_ENA=1, LINEOUTR_RMV_SHORT=1, LINEOUTR_ENA_OUTP=1, LINEOUTR_ENA_DLY=1, LINEOUTR_ENA=1
	{ 0x62, 0x0001 },		//	CP_ENA=1
	{ 0x68, 0x0005 },		//	CP_DYN_PWR=1
};
const uint32_t i2_abp_hp_ct = sizeof(i2_abp_hp_arr)/sizeof(REG_CONFIG_T);

//------------------------------------------------------------------------------
//	title:	IN2LR to line-out L/R (digital loop-back)
//	input:	IN2[LR]
//	output:	LINEOUT[LR]
//	path:	IN2[LR] --> PGA --> ADC --> DAC --> line-out/headphone-out
//------------------------------------------------------------------------------
//
const REG_CONFIG_T i2_loop_arr[] = {
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
	{ 0x20, 0x0CC6 },		//	ADCL_DAC_SVOL=0dB, ADCR_DAC_SVOL=0dB, ADC_TO_DACL= 01 (left ADC), ADC_TO_DACR= 10 (right ADC)
	{ 0x21, 0x0040 },		//	DAC_MONO=0, DAC_SB_FILT-0, DAC_MUTERATE=0, DAC_UNMUTE RAMP=0, DAC_OSR128=1, DAC_MUTE=0, DEEMPH=00 (none)
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
const uint32_t i2_loop_ct = sizeof(i2_loop_arr)/sizeof(REG_CONFIG_T);

//------------------------------------------------------------------------------
//	title:		IN2LR to digital interface L/R and
//				AIF to line-out L/R (digital I/O)
//	input:		IN2[LR]
//	output:		LINEOUT[LR]
//	in path:	IN2[LR] --> PGA --> ADC --> AIF
//	out path:	AIF --> DAC --> line-out/headphone-out
//------------------------------------------------------------------------------
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
	{ 0x21, 0x0040 },		//	DAC_MONO=0, DAC_SB_FILT-0, DAC_MUTERATE=0, DAC_UNMUTE RAMP=0, DAC_OSR128=1, DAC_MUTE=0, DEEMPH=0 (none)
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

//------------------------------------------------------------------------------
//	title:		WM8904 RESET
//				RESETs the WM8904
//------------------------------------------------------------------------------
//
const REG_CONFIG_T	wm8904_reset_arr[] = {
    { 0x00, 0x0000}, 					//	SW Reset
    { 0x16, 0x000F}, 					//	MCLK_INV=0, SYSCLK_SRC=0, TOCLK_RATE=0, OPCLK_ENA=1, CLK_SYS_ENA=1, CLK_DSP_ENA=1, TOCLK_ENA=1

    /* execute default start=up sequence */
    { 0x6C, 0x0100},					//	WSEQ_ENA=1, WSEQ_WRITE_INDEX=0_0000
    { 0x6F, 0x0100},					//	WSEQ_ABORT=0, WSEQ_START=1, WSEQ_START_INDEX=00_0000
    { 0xFF, 500},						//	Up to 500ms pause for write sequencer to finish before further writes
};
const uint32_t wm8904_reset_ct = sizeof(wm8904_reset_arr)/sizeof(REG_CONFIG_T);
