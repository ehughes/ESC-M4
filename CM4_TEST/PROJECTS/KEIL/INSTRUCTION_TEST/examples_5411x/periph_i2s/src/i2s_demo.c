/*
 * @brief Peripheral I2S / DW8904 example.
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

#include "clkout.h"
#include "i2c_if.h"
#include "i2s_if.h"
#include "delay.h"

#include "audio_pll.h"
#include "wm8904.h"

void display_statistics(I2S_STATISTICS_T* s)
{
	printf("I2S statistics\n");
	printf("               interrupts: %d\n", s->interrupts);
	printf("      transmit interrupts: %d\n", s->lvl_tx);
	printf("       receive interrupts: %d\n", s->lvl_rx);
	printf("     FIFO transmit errors: %d\n", s->fifo_err_tx);
	printf("      FIFO receive errors: %d\n", s->fifo_err_rx);
	printf(" I2S channel pair is busy: %d\n", s->i2s_busy);
	printf("    I2S slave frame error: %d\n", s->i2s_slvfrmerr);
	printf("          I2S data paused: %d\n", s->i2s_data_paused);
}


//------------------------------------------------------------------------------
//	main application
//------------------------------------------------------------------------------
int main(void)
{
	I2S_STATISTICS_T i2s_stat;
	
//------------------------------------------------------------------------------
//	system / board initialization
//------------------------------------------------------------------------------
	SystemCoreClockUpdate();													//	update the core clock
	Board_Init();																//	initialize the board
	SysTick_Init();																//	initialize SysTick

//------------------------------------------------------------------------------
//	Application log-on
//------------------------------------------------------------------------------
	printf("I2S / WM8904 I/O demo:\n");											//	print log-on message
	printf("build date: " __DATE__ " build time: " __TIME__ "\n");
	printf("processor frequency: %dMHz\n", SystemCoreClock/1000000);

//------------------------------------------------------------------------------
//	Audio PLL (mclk) configuration
//------------------------------------------------------------------------------
	printf("Configure Audio PLL\n");
	audio_pll_setup();
	printf("Audio PLL frequency: %6.3fMHz\n", (double)Chip_Clock_GetStoredPLLClockRate()/1000000.0);

//------------------------------------------------------------------------------
//	I2C initialization
//------------------------------------------------------------------------------
	printf("Configure I2C port\n");
	i2c_pinmux_init();															//	initialize I2C port
	i2c_master_init();															//	initialize I2C as master
	i2c_interrupt_enable();														//	enable I2C interrupt

//------------------------------------------------------------------------------
//	WM8904 initialization
//	There are several ways the WM8904 can be configured:
//	-- CONFIG_ANALOG_BYPASS:	Pure analog channel goodness, no digital I/O
//	-- CONFIG_DIGITAL_LOOPBACK:	Same as digital I/O with the addition
//								of an internal loop-back
//	-- CONFIG_DIGITAL_IO:		I2S I/O without loop-back
//------------------------------------------------------------------------------
	printf("Configure WM8904 codec\n");
	wm8904_reset();																//	reset WM8904
	wm8904_config(CONFIG_DIGITAL_IO);											//	initialize WM8904
	wm8904_set_sample_rate(MCLK_FS_256X, 48000, 16);
	wm8904_pga_gain(0x05, 0x05);												//	max out input gain (for electret microphone)
	wm8904_hp_vol(0x39, 0x39);													//	normalize gain (0dB) for headphone output

//------------------------------------------------------------------------------
//	WM8904 initialization
//------------------------------------------------------------------------------
	printf("Configure I2S port\n");
	i2s_pinmux_init();															//	initialize I2S pins
	i2s_port_init();															//	initialize I2S port
	i2s_start();																//	start I2S TX
	wm8904_vol_status();														//	display gain configuration

//------------------------------------------------------------------------------
//	sleep loop
//------------------------------------------------------------------------------
	while (1) {
		Delay_block(1000);														//	sleep for a second

		i2s_get_rx_statistics(&i2s_stat);										//	get the statistics
		printf("RX ");															//	display direction (RX / TX)
		display_statistics(&i2s_stat);											//	display the statistics

		i2s_get_tx_statistics(&i2s_stat);										//	get the statistics
		printf("TX ");                                                          //	display direction (RX / TX)
		display_statistics(&i2s_stat);                                          //	display the statistics
	}
}
