/*
 * @brief DMIC I2S interface
 *
 * @note
 * Copyright(C) NXP Semiconductors, 2016
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

#include "board.h"

#include "i2s_if.h"
#include "dmic_if.h"

/** @defgroup PERIPH_DMIC_5411X DMIC example
 * @ingroup EXAMPLES_PERIPH_5411X
 * @include "periph_dmic\readme.txt"
 */
								
/**
 * @}
 */

#define		FIFO_DEPTH		8

ALIGN(16)	DMA_DUAL_DESCRIPTOR_T	pingPongDescriptors0;
ALIGN(16)	DMA_DUAL_DESCRIPTOR_T	pingPongDescriptors1;
static		DMIC_CHANNEL_CONFIG_T	dmic_channel_cfg[2];

static		DMIC_STATISTICS_T		stats[2];

static const PINMUX_GRP_T dmic_io[] =
{
	{0, 31, (IOCON_FUNC1 | IOCON_MODE_INACT  | IOCON_DIGITAL_EN)}, /* PDM CLK */
	{1, 0,  (IOCON_FUNC1 | IOCON_MODE_INACT  | IOCON_DIGITAL_EN)}, /* PDM DATA */
};	

static void read_data(uint32_t chan)
{
	uint32_t data, i;
	for (i=0; i<FIFO_DEPTH; i++) {
		data = Chip_DMIC_FifoGetData(LPC_DMIC,chan) & 0xffff;
		i2s_buff_read_external(data);
	}
}

static void read_data_dummy(uint32_t chan)
{
	uint32_t i;
	for (i=0; i<FIFO_DEPTH; i++) {
		Chip_DMIC_FifoGetData(LPC_DMIC,chan);
	}
}

void DMIC_IRQHandler()
{
	uint32_t status;

	status = Chip_DMIC_FifoGetStatus(LPC_DMIC, DMIC_LEFT);
	if (status & DMIC_FIFO_INT)	{
		Chip_DMIC_FifoClearStatus(LPC_DMIC, DMIC_LEFT, DMIC_FIFO_INT);
		stats[DMIC_LEFT].fifo_ints +=1;
		read_data(DMIC_LEFT);
	}
	if (status & DMIC_FIFO_OVERRUN) {
		Chip_DMIC_FifoClearStatus(LPC_DMIC, DMIC_LEFT, DMIC_FIFO_OVERRUN);
		stats[DMIC_LEFT].fifo_overrun +=1;
	}
	if (status & DMIC_FIFO_UNDERRUN) {
		Chip_DMIC_FifoClearStatus(LPC_DMIC, DMIC_LEFT, DMIC_FIFO_UNDERRUN);
		stats[DMIC_LEFT].fifo_underrun +=1;
	}

	status = Chip_DMIC_FifoGetStatus(LPC_DMIC, DMIC_RIGHT);
	if (status & DMIC_FIFO_INT)	{
		Chip_DMIC_FifoClearStatus(LPC_DMIC, DMIC_RIGHT, DMIC_FIFO_INT);
		stats[DMIC_RIGHT].fifo_ints +=1;
		read_data_dummy(DMIC_RIGHT);
	}
	if (status & DMIC_FIFO_OVERRUN) {
		Chip_DMIC_FifoClearStatus(LPC_DMIC, DMIC_RIGHT, DMIC_FIFO_OVERRUN);
		stats[DMIC_RIGHT].fifo_overrun +=1;
	}
	if (status & DMIC_FIFO_UNDERRUN) {
		Chip_DMIC_FifoClearStatus(LPC_DMIC, DMIC_RIGHT, DMIC_FIFO_UNDERRUN);
		stats[DMIC_RIGHT].fifo_underrun +=1;
	}
}

//------------------------------------------------------------------------------
//	Get statistics
//------------------------------------------------------------------------------
void dmic_get_chan_statistics(DMIC_STATISTICS_T* s, uint16_t chan)
{
	*s = stats[chan];															// structure copy
}

void HWVAD_IRQHandler()
{
	volatile int i;

	Board_LED_Set(0, true);

	LPC_DMIC->HWVADST10 = 1; 	/* disable HWVAD */
	for (i=0;i<=500;i++); 		/* wait for HWVAD to settle */
	LPC_DMIC->HWVADST10 = 0; 	/* enable HWVAD */

   	Board_LED_Set(0, false);
};

volatile uint32_t temp;

//------------------------------------------------------------------------------
//	pin initialization
//------------------------------------------------------------------------------
void dmic_pinmux_init(void)
{
	Chip_Clock_EnablePeriphClock(SYSCON_CLOCK_IOCON);
	Chip_IOCON_SetPinMuxing(LPC_IOCON, dmic_io, sizeof(dmic_io) / sizeof(PINMUX_GRP_T));
	Chip_Clock_DisablePeriphClock(SYSCON_CLOCK_IOCON);
}

//------------------------------------------------------------------------------
//	DMIC configuration
//------------------------------------------------------------------------------
void dmic_cfg(void)
{
	LPC_SYSCON->DMICCLKSEL = 0;													//	DMIC uses 12MHz FRO
	LPC_SYSCON->DMICCLKDIV = 4;													// 12MHz divided by 5 = 2.4MHz PDM clock --> gives 48kHz sample rate
	
	dmic_channel_cfg[0].side       = DMIC_LEFT;
	dmic_channel_cfg[0].divhfclk   = DMIC_PDM_DIV1;
	dmic_channel_cfg[0].gainshft   = 3;
	dmic_channel_cfg[0].osr        = 25;
	dmic_channel_cfg[0].preac2coef = DMIC_COMP0_0;
	dmic_channel_cfg[0].preac4coef = DMIC_COMP0_0;
	
	dmic_channel_cfg[1].side       = DMIC_RIGHT;
	dmic_channel_cfg[1].divhfclk   = DMIC_PDM_DIV1;
	dmic_channel_cfg[1].gainshft   = 3;
	dmic_channel_cfg[1].osr        = 25;
	dmic_channel_cfg[1].preac2coef = DMIC_COMP0_0;
	dmic_channel_cfg[1].preac4coef = DMIC_COMP0_0;
	
	Chip_DMIC_Init(SYSCON_CLOCK_DMIC, RESET_DMIC);
	Chip_DMIC_CfgIO(LPC_DMIC, pdm_dual);
 	Chip_DMIC_SetOpMode(LPC_DMIC, DMIC_OP_INTR);
	Chip_DMIC_Use2fs(LPC_DMIC, true);

	Chip_DMIC_CfgChannel(LPC_DMIC, DMIC_LEFT, &dmic_channel_cfg[0]);
	Chip_DMIC_CfgChannel(LPC_DMIC, DMIC_RIGHT, &dmic_channel_cfg[1]);

	Chip_DMIC_CfgChannelDc(LPC_DMIC, DMIC_LEFT, DMIC_DC_CUT155, 0, true);
	Chip_DMIC_CfgChannelDc(LPC_DMIC, DMIC_RIGHT, DMIC_DC_CUT155, 0, true);
	
	Chip_DMIC_FifoChannel(LPC_DMIC, DMIC_LEFT, FIFO_DEPTH, true, true);
	Chip_DMIC_FifoChannel(LPC_DMIC, DMIC_RIGHT, FIFO_DEPTH, true, true);
	
	LPC_DMIC->HWVADTHGN = 0;
	LPC_DMIC->HWVADTHGS = 1;

 	Chip_SYSCON_EnableWakeup(SYSCON_STARTER_DMIC);
	Chip_SYSCON_EnableWakeup(SYSCON_STARTER_HWVAD);
};

void dmic_start(void)
{
	NVIC_EnableIRQ(DMIC_IRQn);
	NVIC_EnableIRQ(HWVAD_IRQn);
	Chip_DMIC_EnableChannnel(LPC_DMIC, 0x3);
}

void dmic_stop(void)
{
	NVIC_DisableIRQ(HWVAD_IRQn);
	Chip_DMIC_EnableChannnel(LPC_DMIC, 0x0);
}
