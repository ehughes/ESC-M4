/*
 * @brief I2S interface to DW8904
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
#include <string.h>
#include "board.h"
#include "audio_usbd.h"
#include "i2s_if.h"
#include "sine_file.h"

//------------------------------------------------------------------------------
//	Local defines
//------------------------------------------------------------------------------
#define I2S6_FLEXCOMM  			6
#define I2S7_FLEXCOMM  			7

#define I2S_PORT_TX				LPC_I2S6
#define I2S_TX_ISR				I2S6_IRQHandler
#define I2S_TX_IRQNUM			I2S6_IRQn
#define I2S_TX_FLEXCOMM			I2S6_FLEXCOMM

#define I2S_PORT_RX				LPC_I2S7
#define I2S_RX_ISR				I2S7_IRQHandler
#define I2S_RX_IRQNUM			I2S7_IRQn
#define I2S_RX_FLEXCOMM			I2S7_FLEXCOMM

//------------------------------------------------------------------------------
//	Local const data
//------------------------------------------------------------------------------
static const uint32_t   i2s_p1	= IOCON_FUNC1 | IOCON_DIGITAL_EN;
static const uint32_t   i2s_p2	= IOCON_FUNC2 | IOCON_DIGITAL_EN;

//------------------------------------------------------------------------------
//	Local data
//------------------------------------------------------------------------------
static I2S_AUDIO_FORMAT_T audio_fmt_tx = {
	I2S_TX,					/*!< Data direction: tx or rx */
	NORMAL_MASTER,			/*!< Master / Slave configuration */
	I2S_CLASSIC,			/*!< I2S mode */
	false,					/*!< right channel data in low portion of FIFO */
	false,					/*!< left justify data in FIFO */
	false,					/*!<  data source is the D-Mic subsystem */
	false,					/*!<  SCK polarity */
	false,					/*!<  WS polarity */
	16,						/*!< Flexcomm function clock divider */
	2,						/*!< Channel Number - 1 is mono, 2 is stereo */
	16,						/*!< Word Width */
	32,						/*!< Frame Width */
	0,						/*!< Data position in the frame */
	4,						/*!< FIFO depth (fifo config) */
};

static I2S_AUDIO_FORMAT_T audio_fmt_rx = {
	I2S_RX,					/*!< Data direction: tx or rx */
	NORMAL_SLAVE,			/*!< Master / Slave configuration */
	I2S_CLASSIC,			/*!< I2S mode */
	false,					/*!< right channel data in low portion of FIFO */
	false,					/*!< left justify data in FIFO */
	false,					/*!<  data source is the D-Mic subsystem */
	false,					/*!<  SCK polarity */
	false,					/*!<  WS polarity */
	1,						/*!< Flexcomm function clock divider */
	2,						/*!< Channel Number - 1 is mono, 2 is stereo */
	16,						/*!< Word Width */
	32,						/*!< Frame Width */
	0,						/*!< Data position in the frame */
	4,						/*!< FIFO depth (fifo config) */
};

static I2S_STATISTICS_T	rx_stat;
static I2S_STATISTICS_T	tx_stat;

//------------------------------------------------------------------------------
//	Low level initialization:
//		i2s_pinmux_init:	initialize pins used for I2S port
//		i2s_tx_init:		init transmit side
//		i2s_tx_init:		init receive side
//		i2s_port_init:		init I2S port
//------------------------------------------------------------------------------
static void i2s_pinmux_init(void)
{
	Chip_Clock_EnablePeriphClock(SYSCON_CLOCK_IOCON);
	Chip_IOCON_PinMuxSet(LPC_IOCON, 0, 5, i2s_p1);								//	Flexcomm 6 / SDA
	Chip_IOCON_PinMuxSet(LPC_IOCON, 0, 6, i2s_p1);								//	Flexcomm 6 / WS
	Chip_IOCON_PinMuxSet(LPC_IOCON, 0, 7, i2s_p1);								//	Flexcomm 6 / SCK

	Chip_IOCON_PinMuxSet(LPC_IOCON, 1, 12, IOCON_FUNC4 | IOCON_DIGITAL_EN);		//	Flexcomm 7 / SCK
	Chip_IOCON_PinMuxSet(LPC_IOCON, 1, 7, i2s_p2);								//	Flexcomm 7 / SDA
	Chip_IOCON_PinMuxSet(LPC_IOCON, 1, 8, i2s_p2);								//	Flexcomm 7 / WS
	Chip_Clock_DisablePeriphClock(SYSCON_CLOCK_IOCON);
}

//------------------------------------------------------------------------------
//	I2S TX port initialization
//------------------------------------------------------------------------------
static void i2s_tx_init(void)
{
	Chip_I2S_Init(I2S_PORT_TX, &audio_fmt_tx);									//	initialize I2S port
	Chip_Clock_SetFLEXCOMMClockSource(I2S_TX_FLEXCOMM, SYSCON_FLEXCOMMCLKSELSRC_PLL);
	Chip_I2S_Config(I2S_PORT_TX, &audio_fmt_tx);								//	configure I2S port

	Chip_I2S_FIFO_Config(I2S_PORT_TX, &audio_fmt_tx);							//	configure I2S FIFO
	Chip_I2S_FIFO_Control(I2S_PORT_TX, &audio_fmt_tx, I2S_FIFO_TXZ_ENABLE);		//	send zeros if no data is available
	Chip_I2S_FIFO_Control(I2S_PORT_TX, &audio_fmt_tx, I2S_FIFO_ENABLE);			//	enable FIFO
}

//------------------------------------------------------------------------------
//	I2S TX port initialization
//------------------------------------------------------------------------------
static void i2s_rx_init(void)
{
	Chip_I2S_Init(I2S_PORT_RX, &audio_fmt_rx);									//	initialize I2S port
	Chip_Clock_SetFLEXCOMMClockSource(I2S_RX_FLEXCOMM, SYSCON_FLEXCOMMCLKSELSRC_PLL);
	Chip_I2S_Config(I2S_PORT_RX, &audio_fmt_rx);								//	configure I2S port

	Chip_I2S_FIFO_Config(I2S_PORT_RX, &audio_fmt_rx);							//	configure I2S FIFO
	Chip_I2S_FIFO_Control(I2S_PORT_RX, &audio_fmt_rx, I2S_FIFO_ENABLE);			//	enable FIFO
}

static void i2s_port_init(void)
{
	i2s_tx_init();																//	init i2s tx port
	i2s_rx_init();																//	init i2s rx port

	Chip_I2S_FIFO_SetInterrupt(I2S_PORT_TX, I2S_FIFO_INT_TXERR | I2S_FIFO_INT_TXLVL);	//	enable tx interrupts
	Chip_I2S_FIFO_SetInterrupt(I2S_PORT_RX, I2S_FIFO_INT_RXERR | I2S_FIFO_INT_RXLVL);	//	enable rx interrupts
}

//------------------------------------------------------------------------------
//	I2S initialization / data control
//		I2S_Init:		initialize the I2S port
//		I2S_Start:		start I2S port
//		I2S_Stop:		stop I2S port
//------------------------------------------------------------------------------
void I2S_Init(void)
{
	i2s_pinmux_init();															//	initialize I2S pins
	i2s_port_init();															//	initialize I2S port
	I2S_Start();																//	start I2S TX
}

void I2S_Start(void)
{
	NVIC_EnableIRQ(I2S_TX_IRQNUM);												//	enable tx interrupt
	Chip_I2S_Start(I2S_PORT_TX);												//	start tx I2S port

	NVIC_EnableIRQ(I2S_RX_IRQNUM);												//	enable rx interrupt
	Chip_I2S_Start(I2S_PORT_RX);												//	start rx I2S port
}

void I2S_Stop(void)
{
	NVIC_DisableIRQ(I2S_TX_IRQNUM);												//	disable tx interrupt
	NVIC_DisableIRQ(I2S_RX_IRQNUM);												//	disable rx interrupt

	Chip_I2S_Stop(I2S_PORT_TX);													//	start tx I2S port
	Chip_I2S_ClrFIFOStatus(I2S_PORT_TX, (I2S_FIFO_INT_TXERR|I2S_FIFO_INT_RXERR));		//	clear FIFO status

	Chip_I2S_Stop(I2S_PORT_RX);													//	start rx I2S port
	Chip_I2S_ClrFIFOStatus(I2S_PORT_RX, (I2S_FIFO_INT_TXERR|I2S_FIFO_INT_RXERR));
}

void I2S_SetSampleRate(uint32_t rate)
{
	return;
}

//------------------------------------------------------------------------------
//	I2S sample count manager
//		I2S_GetRecCount:	get number of samples recorded
//		I2S_GetPlayCount:	get number of samples played
//
//		I2S_SampleChk:		Resets sync function if no sample record or playback
//		I2S_SampleDiff:		Determine sample difference between now and last start
//------------------------------------------------------------------------------
static volatile int32_t prev_ct, curr_play_ct, curr_rec_ct;
static bool	sample_reset;

bool I2S_SampleChk(void)
{
	if ((g_AdcCtrl.flags & (ADC_PLAY_DATAVALID | ADC_REC_DATAVALID)) == 0) {
		LPC_USB->INTEN &= ~(1UL << 30);
		sample_reset = false;
		return false;
	}

	if (sample_reset == false) {
		sample_reset = true;
		prev_ct = curr_play_ct-Chip_I2S_GetFIFOTxLevel(I2S_PORT_TX);
		return false;
	}

	return true;
}

int32_t I2S_SampleDiff(void)
{
	int32_t ct;
	int32_t diff;

	if (g_AdcCtrl.flags & ADC_PLAY_DATAVALID) {
		ct = curr_play_ct-Chip_I2S_GetFIFOTxLevel(I2S_PORT_TX);
		diff = ct - prev_ct;
		prev_ct = ct;
		if (diff < 460) diff = 480;
	} else {
		diff = 480;
	}
	return diff;
}

//------------------------------------------------------------------------------
//	I2S to USB I/O
//		usb_get_data:	get data from USB
//		i2s_write:		send data to I2S
//
//		usb_put_data:	post data to USB
//		i2s_read:		get data from I2S
//------------------------------------------------------------------------------
static uint32_t usb_get_data(void)
{
	uint32_t data;
	ADC_SUBSTREAM_T		*pSubs	= &g_AdcCtrl.subs[SUBS_SPEAKER];
	uint8_t				*idx	= (uint8_t *)&pSubs->rd_idx;
	const int			clen	= pSubs->eTD[*idx].buf_length / 4;
	uint32_t			*ptr	= (uint32_t *)pSubs->eTD[*idx].buf_ptr;
	static int			cidx;

	data = ptr[cidx++];
	if (cidx >= clen) {
		cidx = 0;
		(*idx)++;
		if (*idx >= NUM_DTDS) {
			*idx = 0;
		}
	}
	pSubs->rd_count+=1;
	curr_play_ct+=1;
	return data;
}
static void i2s_write(void)
{
	uint32_t data;
	while (Chip_I2S_GetFIFOStatus(I2S_PORT_TX) & I2S_FIFO_STAT_TXNOTFULL) {		//	if FIFO is not full
		if (g_AdcCtrl.flags & ADC_PLAY_DATAVALID) {								//	if there's valid data...
			data = usb_get_data();												//		get data from the USB link
			//data = get_sine_data();											//		get sine wave
		} else {																//	if not...
			data = SILENCE_DATA;												//		set data to silence
		}
		Chip_I2S_Send(I2S_PORT_TX, data);										//	send the data (or silence)
	}
}

static void usb_put_data(uint32_t sample)
{
	ADC_SUBSTREAM_T		*pSubs	= &g_AdcCtrl.subs[SUBS_MIC];					//	get the line-in/mic handle
	uint8_t				*idx	= (uint8_t *)&pSubs->wr_idx;					//	point to write index
	uint32_t			*ptr	= (uint32_t *)pSubs->eTD[*idx].buf_ptr;			//	point to buffer
	static uint32_t		cidx;													//	local index
	const uint32_t		pkt_ct	= DEF_SAMPLE_RATE / 1000;						//	calculate packet count

	ptr[cidx++] = sample;														//	store the sample
	if (cidx >= pkt_ct) {														//	if the cindx is greater than packet count...
		pSubs->eTD[*idx].buf_length = pkt_ct * AUDIO_BYTES_PER_SAMPLE;			//	set the length of this packet
		(*idx)++, cidx = 0;														//	go on to the next packet...
		if (*idx >= NUM_DTDS) *idx = 0;											//	if we are past the packet count, then reset to the first packet again
	}

	if (g_AdcCtrl.flags & ADC_RECORDING) {
		if (g_AdcCtrl.flags & ADC_REC_DATAVALID) {
			pSubs->wr_count++;
			curr_rec_ct+=1;
			return;
		}
		if ((*idx == 0) || (*idx == NUM_DTDS)) {
			pSubs->rd_idx = *idx ? 0 : NUM_DTDS;
			g_AdcCtrl.flags |= ADC_REC_DATAVALID;
			ADC_start_xfr(&g_AdcCtrl, pSubs, ADC_USB_READER);
			LPC_USB->INTEN |= (1UL << 30);
		}
	}
}
static void i2s_read(void)
{
	uint32_t sample;
	while (Chip_I2S_GetFIFOStatus(I2S_PORT_RX) & I2S_FIFO_STAT_RXNOTEMPTY) {	//	if FIFO is not empty
		sample = Chip_I2S_Receive(I2S_PORT_RX);									//	read the data
		//sample = get_sine_data();												//  get sine wave
		usb_put_data(sample);													//	store the sample
	}
}

//------------------------------------------------------------------------------
//	Get statistics
//------------------------------------------------------------------------------
void i2s_get_rx_statistics(I2S_STATISTICS_T* s)
{
	*s = rx_stat;																// structure copy
}

void i2s_get_tx_statistics(I2S_STATISTICS_T* s)
{
	*s = tx_stat;																// structure copy
}

//------------------------------------------------------------------------------
//	I2S interrupt processing
//------------------------------------------------------------------------------
void I2S_TX_ISR(void)															//	I2S transmit interrupt
{
	Chip_I2S_ErrorHandler(I2S_PORT_TX, &tx_stat);								//	Accumulate TX errors then, clear status
	i2s_write();																//	read data from I2S, write to USB
}

void I2S_RX_ISR(void)															//	I2S receive interrupt
{
	Chip_I2S_ErrorHandler(I2S_PORT_RX, &rx_stat);								//	Accumulate RX errors then, clear status
	i2s_read();																	//	read data from USB, write to I2S
}
