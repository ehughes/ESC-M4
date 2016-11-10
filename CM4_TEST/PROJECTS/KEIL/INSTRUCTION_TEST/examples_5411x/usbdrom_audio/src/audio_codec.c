/*
 * @brief Codec module a bridge between USB audio class and UI2S modules.
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
#include <stdio.h>
#include <stdlib.h>
#include "app_usbd_cfg.h"
#include "board.h"
#include "audio_usbd.h"
//#include "ui2s_api.h"
#include "audio_codec.h"
#include "i2c_if.h"
#include "i2s_if.h"

/*****************************************************************************
 * Private types/enumerations/variables
 ****************************************************************************/

/*****************************************************************************
 * Public types/enumerations/variables
 ****************************************************************************/

/* global data */
Codec_Ctrl_t g_codec;

/*****************************************************************************
 * Private functions
 ****************************************************************************/

/*****************************************************************************
 * Public functions
 ****************************************************************************/

/* Routine to handle codec clean-up in USB reset event (new host). */
void Codec_Reset(void)
{
	Codec_Suspend();
//	UI2S_Reset();
}

/* Codec initialization routine */
ErrorCode_t Codec_Init(const CodecInterface_t *hwCtrl)
{
	ErrorCode_t ret = LPC_OK;

	/* Setup PLL and provide MCLK to codec */
	audio_pll_setup();

	/* Initialize I2C for codec communication */
	i2c_pinmux_init();
	i2c_master_init();

	/* init I2S module */
	I2S_Init();

	/* init codec */
	g_codec.hw = hwCtrl;
	ret = g_codec.hw->Init();

	if (ret == LPC_OK) {
		g_codec.cur_rate = DEF_SAMPLE_RATE;
		/* suspend codec after init to conserve power */
		Codec_Suspend();
	}

	return ret;
}

/*----------------------------------------------------------------------------
   Codec_SetSampleRate:
 *----------------------------------------------------------------------------*/
ErrorCode_t Codec_SetSampleRate(USB_ADC_CTRL_T *pAdcCtrl, uint16_t rate)
{
	ErrorCode_t ret = LPC_OK;

	if (rate != g_codec.cur_rate) {
		g_codec.cur_rate = rate;
		I2S_SetSampleRate(rate);
		g_codec.hw->setSampleRate(rate);
		g_codec.state |= CODEC_ST_SRATE_CHNGD;
	}

	return ret;
}

/*   This callback routine is called when ADC recieves capture start
            or end message (full bandwidth to zero bandwidth interface switch).
 */
ErrorCode_t Codec_Record(void *pCtrl, uint32_t altId)
{
	ErrorCode_t ret = LPC_OK;
	USB_ADC_CTRL_T *pAdcCtrl = (USB_ADC_CTRL_T *) pCtrl;
	ADC_SUBSTREAM_T *pSubs = &pAdcCtrl->subs[SUBS_MIC];
	if (altId != 0) {
		/*##################################################################
		   ROM driver enables ep so disable it untill we have data to send.
		 */
		ADC_stop_xfr(pAdcCtrl, pSubs, ADC_USB_READER);
		/*##################################################################*/
		/* set capture state flags */
		pAdcCtrl->flags &= ~ADC_REC_DATAVALID;
		pAdcCtrl->flags |= ADC_RECORDING;
		Codec_Resume();
	}
	else {
		pAdcCtrl->flags &= ~(ADC_REC_DATAVALID | ADC_RECORDING);
		/* stop USB transfers */
		ADC_stop_xfr(pAdcCtrl, pSubs, ADC_USB_READER);

		if ((pAdcCtrl->flags & ADC_PLAYING) == 0) {
			Codec_Suspend();
		}
	}
	/* reset buffer pointers */
	pSubs->wr_idx  = 0;

	return ret;
}

/* This callback routine is called when ADC recieves playback start
            or end message (full bandwidth to zero bandwidth interface switch). */
ErrorCode_t Codec_Play(void *pCtrl, uint32_t altId)
{
	ErrorCode_t ret = LPC_OK;
	USB_ADC_CTRL_T *pAdcCtrl = (USB_ADC_CTRL_T *) pCtrl;
	ADC_SUBSTREAM_T *pSubs = &pAdcCtrl->subs[SUBS_SPEAKER];

	if (altId != 0) {
		/* set the bit clock as per alt interface selected*/
		// Codec_SetBclk(pAdcCtrl, SUBS_SPEAKER, altId);
		/* set play state flags */
		pAdcCtrl->flags &= ~ADC_PLAY_DATAVALID;
		pAdcCtrl->flags |= ADC_PLAYING;
		ADC_start_xfr(pAdcCtrl, pSubs, ADC_USB_WRITER);
		// if ( (pAdcCtrl->flags & ADC_RECORDING) == ADC_RECORDING ) {
		Codec_Resume();
		// }

	}
	else if (pAdcCtrl->flags & ADC_PLAYING) {

		pAdcCtrl->flags &= ~(ADC_PLAY_DATAVALID | ADC_PLAYING);
		ADC_stop_xfr(pAdcCtrl, pSubs, ADC_USB_WRITER);

		/* disable tx if both playback & capture are off */
		if ((pAdcCtrl->flags & ADC_RECORDING) == 0) {
			Codec_Suspend();
		}
	}
	pSubs->rd_idx  = 0;

	return ret;
}
extern uint32_t sof_cnt;
/* This callback routine is called when USB receives a packet. */
ErrorCode_t Codec_usb_rx_done(void *pCtrl, ADC_SUBSTREAM_T *pSubs, uint32_t len)
{
	int32_t diff;
	USB_ADC_CTRL_T *pAdcCtrl = (USB_ADC_CTRL_T *) pCtrl;

	/* check if we received data */
	if (len > 0) {
		if ((pAdcCtrl->flags & ADC_PLAY_DATAVALID) == 0) {
			/* store index when we started receiving valid pkts */
			if (pSubs->wr_valid_idx == DTD_INVALID_IDX) {
				pSubs->wr_valid_idx = pSubs->wr_idx;
			}

			/* check if we buffered enough data to set the data valid flag */
			INDEX_DIFF(diff, pSubs->wr_idx, pSubs->wr_valid_idx);
			if ( diff >= DATA_VALID_DIFF) {
				LPC_USB->INTEN |= 1UL << 30;
				pAdcCtrl->flags |= ADC_PLAY_DATAVALID;
				pSubs->rd_idx = pSubs->wr_valid_idx;
			}
		}
		else {
			/* Check if USB stopped receiving data. If true clear ADC_PLAY_DATAVALID
			   so that IRQ routine plays silence until we receive data on USB. */
			if (pSubs->rd_idx == pSubs->wr_idx) {
				LPC_USB->INTEN &= ~(1UL << 30);
				pSubs->wr_valid_idx = DTD_INVALID_IDX;
				g_AdcCtrl.flags &= ~ADC_PLAY_DATAVALID;
			}
		}
	}
	else {
		/* reset valid index and data valid flag */
		pSubs->wr_valid_idx = DTD_INVALID_IDX;
		pAdcCtrl->flags &= ~ADC_PLAY_DATAVALID;
	}
	return LPC_OK;
}

/* Suspend codec and corresponding clocks */
void Codec_Suspend(void)
{
	if ((g_codec.state & CODEC_ST_SUSPENDED) == 0) {
#if defined(LOWPOWEROPERATION)
		/* stop I2S interface */
		I2S_Stop();
#endif

		/* shutdown Codec to reduce power consumption */
		g_codec.hw->suspend();

#if defined(LOWPOWEROPERATION)
		/* Trun-off MCLK going to codec and stop PLL */
		audio_pll_stop(); // FIXME: Should we turn this off (?)
#endif
		ADC_Flush_Audio();

		/* set suspended flag */
		g_codec.state |= CODEC_ST_SUSPENDED;

	}
}

/* Resume codec and corresponding clocks */
void Codec_Resume(void)
{
//	USB_ADC_CTRL_T *pAdcCtrl = &g_AdcCtrl;
//	ADC_SUBSTREAM_T *pSubs = &pAdcCtrl->subs[SUBS_MIC];

	if (g_codec.state & CODEC_ST_SUSPENDED) {
#if defined(LOWPOWEROPERATION)
		/* Trun-on PLL and MCLK going to codec */
		audio_pll_start(); // FIXME: Should we turn this on (?)
#endif

		/* Reinitialize codec */
		g_codec.hw->resume();

#if defined(LOWPOWEROPERATION)
		/* Start I2S */
		I2S_Start();
#endif

		/* clear suspended flag */
		g_codec.state &= ~CODEC_ST_SUSPENDED;
	}
}

/*----------------------------------------------------------------------------
   Codec_tasks: Executes scheduled codec tasks which can't be done in IRQ context.
        This routine executes in user/system task context.
 *----------------------------------------------------------------------------*/
ErrorCode_t Codec_Tasks(void)
{
	if (g_codec.tasks) {
		if (g_codec.tasks & CODEC_TASK_MUTE) {
			g_codec.hw->mute(1);
			g_codec.tasks &= ~CODEC_TASK_MUTE;
		}
		if (g_codec.tasks & CODEC_TASK_UNMUTE) {
			g_codec.hw->mute(0);
			g_codec.tasks &= ~CODEC_TASK_UNMUTE;
		}
		if (g_codec.tasks & CODEC_TASK_VOLUME) {
			g_codec.hw->setVolume(g_codec.volume);
			g_codec.tasks &= ~CODEC_TASK_VOLUME;
		}
	}

	return LPC_OK;
}
