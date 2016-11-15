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

#include "i2s_if.h"

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

#define BUFF_CT					12000

//------------------------------------------------------------------------------
//	Local const data
//------------------------------------------------------------------------------
static const uint32_t   i2s_p1	= IOCON_FUNC1 | IOCON_DIGITAL_EN;
static const uint32_t   i2s_p2	= IOCON_FUNC2 | IOCON_DIGITAL_EN;
static const uint32_t   i2s_p4	= IOCON_FUNC4 | IOCON_DIGITAL_EN;

static I2S_STATISTICS_T	rx_stat;
static I2S_STATISTICS_T	tx_stat;

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

static uint32_t	io_buff[BUFF_CT];												//	local tx/rx buffers
	
//------------------------------------------------------------------------------
//	External data
//------------------------------------------------------------------------------
extern const uint16_t sine_buff_arr[];											//	pointer to the send buffer array
extern const uint16_t sine_buff_ct;												//	number of entries in the array

//------------------------------------------------------------------------------
//	pin initialization
//------------------------------------------------------------------------------
void i2s_pinmux_init(void)
{
	Chip_Clock_EnablePeriphClock(SYSCON_CLOCK_IOCON);
	Chip_IOCON_PinMuxSet(LPC_IOCON, 0, 5,	i2s_p1);							//	Flexcomm 6 / SDA
	Chip_IOCON_PinMuxSet(LPC_IOCON, 0, 6,	i2s_p1);							//	Flexcomm 6 / WS
	Chip_IOCON_PinMuxSet(LPC_IOCON, 0, 7,	i2s_p1);							//	Flexcomm 6 / SCK

	Chip_IOCON_PinMuxSet(LPC_IOCON, 1, 12,	i2s_p4);							//	Flexcomm 7 / SCK
	Chip_IOCON_PinMuxSet(LPC_IOCON, 1, 7, 	i2s_p2);							//	Flexcomm 7 / SDA
	Chip_IOCON_PinMuxSet(LPC_IOCON, 1, 8,	i2s_p2);							//	Flexcomm 7 / WS
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

//------------------------------------------------------------------------------
//	I2S port configuration
//------------------------------------------------------------------------------
void i2s_port_init(void)
{
	i2s_tx_init();																//	init i2s tx port
	i2s_rx_init();																//	init i2s rx port

	Chip_I2S_FIFO_SetInterrupt(I2S_PORT_TX, I2S_FIFO_INT_TXERR | I2S_FIFO_INT_TXLVL);	//	enable tx interrupts
	Chip_I2S_FIFO_SetInterrupt(I2S_PORT_RX, I2S_FIFO_INT_RXERR | I2S_FIFO_INT_RXLVL);	//	enable rx interrupts
}

void i2s_start(void)
{
	NVIC_EnableIRQ(I2S_TX_IRQNUM);												//	enable tx interrupt
	Chip_I2S_Start(I2S_PORT_TX);												//	start tx I2S port

	NVIC_EnableIRQ(I2S_RX_IRQNUM);												//	enable rx interrupt
	Chip_I2S_Start(I2S_PORT_RX);												//	start rx I2S port
}

void i2s_stop(void)
{
	Chip_I2S_Stop(I2S_PORT_RX);													//	stop rx I2S port
	NVIC_DisableIRQ(I2S_RX_IRQNUM);												//	disable rx interrupt

	Chip_I2S_Stop(I2S_PORT_TX);													//	stop tx I2S port
	NVIC_DisableIRQ(I2S_TX_IRQNUM);												//	disable tx interrupt
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
//	Write buffer to WM8904
//	These functions demonstrate a variety of generator functions.
//	They are all based on the sine wave located in sine_file.c
//	-- i2s_buff_write:			write io_buff to the i2s FIFO (normal playback)
//	-- i2s_buff_sine_left:		generate a sine wave on the left channel
//	-- i2s_buff_sine_right:		generate a sine wave on the right channel
//	-- i2s_buff_sine_mono:		generate a sine wave on both channels
//	-- i2s_buff_sine_phase:		generate two different sine waves
//								they differ in phase and level -- see comments
//------------------------------------------------------------------------------
static volatile uint32_t tx_buff_idx = 1;
static volatile uint16_t tx_idx_l=0, tx_idx_r=50;
void i2s_buff_write(void)
{
	while (Chip_I2S_GetFIFOStatus(I2S_PORT_TX) & I2S_FIFO_STAT_TXNOTFULL) {		//	if FIFO is not full
		Chip_I2S_Send(I2S_PORT_TX, io_buff[tx_buff_idx++]);						//	queue the data
		if (tx_buff_idx >= BUFF_CT) tx_buff_idx = 0;							//	wrap index pointer
	}
}

void i2s_buff_sine_left(void)
{
	while (Chip_I2S_GetFIFOStatus(I2S_PORT_TX) & I2S_FIFO_STAT_TXNOTFULL) {		//	if FIFO is not full
		Chip_I2S_Send(I2S_PORT_TX, (uint32_t)sine_buff_arr[tx_buff_idx++]);		//	post sine wave sample (left channel only)
		if (tx_buff_idx >= sine_buff_ct) tx_buff_idx = 0;						//	wrap index pointer
	}
}

void i2s_buff_sine_right(void)
{
	uint32_t sample;
	
	while (Chip_I2S_GetFIFOStatus(I2S_PORT_TX) & I2S_FIFO_STAT_TXNOTFULL) {		//	if FIFO is not full
		sample = (uint32_t)(sine_buff_arr[tx_buff_idx++]<<16);					//	post sine wave sample (right channel only)
		Chip_I2S_Send(I2S_PORT_TX, sample);										//	queue sine wave
		if (tx_buff_idx >= sine_buff_ct) tx_buff_idx = 0;						//	wrap index pointer
	}
}

void i2s_buff_sine_mono(void)
{
	uint32_t sample;
	uint16_t sine_val;
	
	while (Chip_I2S_GetFIFOStatus(I2S_PORT_TX) & I2S_FIFO_STAT_TXNOTFULL) {		//	if FIFO is not full
		sine_val = sine_buff_arr[tx_buff_idx++];								//	get sine value for sample
		sample = (uint32_t)(sine_val<<16) | sine_val;							//	shift the sample into the location
		Chip_I2S_Send(I2S_PORT_TX, sample);										//	post sine wave sample
		if (tx_buff_idx >= sine_buff_ct) tx_buff_idx = 0;						//	wrap index pointer
	}
}

void i2s_buff_sine_phase(void)
{
	uint32_t sample;
	int16_t sv_l, sv_r;
	
	while (Chip_I2S_GetFIFOStatus(I2S_PORT_TX) & I2S_FIFO_STAT_TXNOTFULL) {		//	if FIFO is not full
		sv_l = sine_buff_arr[tx_idx_l];											//	get left sine value (as a 16-bit integer)
		sv_r = sine_buff_arr[tx_idx_r];											//	get right sine value

		sv_l /= 4, sv_l *= 3;													//	lower the left channel to 0.75 of value
		sv_r /= 5, sv_r *= 4;													//	lower right channel to 0.8 of value
		
		sample = (uint32_t)(((uint16_t)sv_r<<16) | (uint16_t)sv_l);				//	build sample (right << 16, left << 0)
		Chip_I2S_Send(I2S_PORT_TX, sample);										//	post sine wave sample

		tx_idx_l+=1, tx_idx_r+=1;												//	bump index pointers
		if (tx_idx_l >= sine_buff_ct) tx_idx_l = 0;								//	wrap left index pointer
		if (tx_idx_r >= sine_buff_ct) tx_idx_r = 0;								//	wrap right index pointer
	}
}

//------------------------------------------------------------------------------
//	Buffer Read Functions:
//	These functions demonstrate two playback functions.
//	- i2s_buff_read:			reads i2s port, saves data in ring-buffer (normal playback)
//	- i2s i2s_buff_audio_echo:	reads i2s port, echo's data, then saves data in ring-buffer
//------------------------------------------------------------------------------
static uint32_t rx_buff_idx = 0;
static int16_t l_buff, r_buff, l_samp, r_samp;
static uint32_t sample;

void i2s_buff_read(void)
{
	while (Chip_I2S_GetFIFOStatus(I2S_PORT_RX) & I2S_FIFO_STAT_RXNOTEMPTY) {	//	if FIFO is not empty
		io_buff[rx_buff_idx++] = Chip_I2S_Receive(I2S_PORT_RX);					//	read the data
		if (rx_buff_idx >= BUFF_CT) rx_buff_idx = 0;							//	wrap index pointer
	}
}

void i2s_buff_audio_echo(void)
{
	while (Chip_I2S_GetFIFOStatus(I2S_PORT_RX) & I2S_FIFO_STAT_RXNOTEMPTY) {	//	if FIFO is not empty
		sample = Chip_I2S_Receive(I2S_PORT_RX);									//	read the data
		l_samp = (int16_t)(sample & 0xffff);									//	extract the left sample
		l_buff = (int16_t)(io_buff[rx_buff_idx] & 0xffff);						//	extract the left buffer
		r_samp = (int16_t)((sample>>16) & 0xffff);								//	extract the right sample
		r_buff = (int16_t)((io_buff[rx_buff_idx] >> 16) & 0xffff);				//	extract the right buffer

		r_buff /= 3, l_buff /= 3;												//	cut buff volume by three
		r_buff += r_samp, l_buff += l_samp;										//	mix old and new data
		sample = (uint32_t)(((uint16_t)r_buff<<16) | (uint16_t)l_buff);			//	place the data in the buffer

		io_buff[rx_buff_idx++] = sample;										//	place the data in the buffer
		if (rx_buff_idx >= BUFF_CT) rx_buff_idx = 0;							//	wrap index pointer
	}
}

//------------------------------------------------------------------------------
//	I2S interrupt processing
//	Note: Pick only one algorithm each for the TX ISR and RX ISR.
//------------------------------------------------------------------------------
void I2S_TX_ISR(void)															//	I2S transmit interrupt
{
	Chip_I2S_ErrorHandler(I2S_PORT_TX, &tx_stat);								//	Accumulate TX errors then, clear status
	i2s_buff_write();															//	transmit data to I2S port
//	i2s_buff_sine_left();														//	transmit sine wave to the left
//	i2s_buff_sine_right();														//	transmit sine wave to the right
//	i2s_buff_sine_mono();														//	transmit sine wave to the center
//	i2s_buff_sine_phase();														//	transmit sine wave with phase and level
}

void I2S_RX_ISR(void)															//	I2S receive interrupt
{
	Chip_I2S_ErrorHandler(I2S_PORT_RX, &rx_stat);								//	Accumulate RX errors then, clear status
	i2s_buff_read();															//	read the data
//	i2s_buff_audio_echo();														//	simple echo
}
