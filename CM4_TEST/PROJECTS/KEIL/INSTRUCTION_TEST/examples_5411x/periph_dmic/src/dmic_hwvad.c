/*
 * @brief DMIC & HWVAD example
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

#include "board.h"

/** @defgroup PERIPH_DMIC_5411X DMIC example
 * @ingroup EXAMPLES_PERIPH_5411X
 * @include "periph_dmic\readme.txt"
 */

/**
 * @}
 */

#define USART0_FLEXCOMM 0

/* Descriptors for packed dma transfers (i.e consecutive data)	*/
const DMA_PERIPHERAL_CONTEXT_T UART0_TX_DMA_CONTEXT = {
	DMAREQ_FLEXCOMM0_TX,              /* dma channel */
	&LPC_USART0->FIFOWR ,             /* register to write to */
	DMA_XFERCFG_WIDTH_8,              /* width 8bits */
	DMA_XFERCFG_SRCINC_1,             /* source incr by 1 * width */
	DMA_XFERCFG_DSTINC_0,             /* dst incr */
	true                              /* not write */
};

void DMA_IRQHandler()  /* Associate DMA service ISR with DMA */
{
	Chip_DMASERVICE_Isr();
};

uint8_t  audioArray[256];

void my_dmic_dma_cb(int signal)
{
	if (signal==0) {
		Chip_DMASERVICE_SingleBuffer(&UART0_TX_DMA_CONTEXT, (uint32_t) &audioArray[0], 128);
	} else {
		Chip_DMASERVICE_SingleBuffer(&UART0_TX_DMA_CONTEXT, (uint32_t) &audioArray[128], 128);
	};
};

ALIGN(16) DMA_DUAL_DESCRIPTOR_T pingPongDescriptors0; /* must be declared outside of main to be able to require alignment */
ALIGN(16) DMA_DUAL_DESCRIPTOR_T pingPongDescriptors1; /* must be declared outside of main to be able to require alignment */


STATIC const PINMUX_GRP_T dmic_io[] = {
	{0, 31, (IOCON_FUNC1 | IOCON_MODE_INACT  | IOCON_DIGITAL_EN)}, /* PDM CLK */
	{1, 0, (IOCON_FUNC1 | IOCON_MODE_INACT  | IOCON_DIGITAL_EN)},  /* PDM DATA */
	{0, 0, (IOCON_FUNC1 | IOCON_MODE_INACT  | IOCON_DIGITAL_EN)},  /* UART0 RX */
	{0, 1, (IOCON_FUNC1 | IOCON_MODE_INACT  | IOCON_DIGITAL_EN)},  /* UART0 TX */
	{0, 29, (IOCON_FUNC0 | IOCON_MODE_PULLUP | IOCON_DIGITAL_EN)}, /* LED-0 */
	{1, 13, (IOCON_FUNC0 | IOCON_MODE_PULLUP | IOCON_DIGITAL_EN)}, /* IR-TX */
};

void HWVAD_IRQHandler()
{
	volatile int i;

	Board_LED_Set(0, true);

	LPC_DMIC->HWVADST10 = 1; 	/* disable HWVAD */
	for (i=0; i<=500; i++); 		/* wait for HWVAD to settle */
	LPC_DMIC->HWVADST10 = 0; 	/* enable HWVAD */

	Board_LED_Set(0, false);
};

volatile uint32_t temp;

int main(void)
{
	int loop = 1;	/* Used to fix the unreachable statement warning */
	DMIC_CHANNEL_CONFIG_T dmic_channel_cfg[2];

	LPC_SYSCON->MAINCLKSELA = 0; /* GO BACK TO 12MHz */
	LPC_SYSCON->MAINCLKSELB = 0; /* GO BACK TO 12MHz */
	temp = (LPC_SYSCON->FROCTRL | (1UL<<31)) & ~(1UL<<30);
	LPC_SYSCON->FROCTRL = temp;
	SystemCoreClockUpdate();

	Chip_IOCON_SetPinMuxing(LPC_IOCON, dmic_io, sizeof(dmic_io) / sizeof(PINMUX_GRP_T));
	Board_Init();
	Board_LED_Set(0, false);

	/* Turn off IR transmitter */
	Chip_GPIO_SetPinDIROutput(LPC_GPIO, 1, 13);
	Chip_GPIO_SetPinState(LPC_GPIO, 1, 13, false);

	Chip_UART_Init(LPC_USART0);
	Chip_UART_SetBaud(LPC_USART0, 750000);
	Chip_UART_ConfigData(LPC_USART0, UART_CFG_DATALEN_8 | UART_CFG_PARITY_NONE | UART_CFG_STOPLEN_1);
	Chip_UART_Enable(LPC_USART0);
	Chip_UART_TXEnable(LPC_USART0);
	LPC_USART0->FIFOCFG |= (1<<12);  /* Enable DMA on FIFO OF UART */

	Chip_DMASERVICE_Init(Chip_DMA_Table);
	Chip_DMASERVICE_DoubleBuffer(&dmic_ch0_dma_interleaved_context, (uint32_t) &audioArray[2], 256,&pingPongDescriptors0);
	Chip_DMASERVICE_DoubleBuffer(&dmic_ch1_dma_interleaved_context, (uint32_t) &audioArray[0], 256,&pingPongDescriptors1);
	Chip_DMASERVICE_RegisterCb(&dmic_ch1_dma_interleaved_context,my_dmic_dma_cb);
	Chip_DMA_EnableIntChannel(LPC_DMA, DMAREQ_DMIC0);
	Chip_DMA_EnableIntChannel(LPC_DMA, DMAREQ_DMIC1);
	Chip_DMA_EnableIntChannel(LPC_DMA, DMAREQ_FLEXCOMM0_TX);
	Chip_DMA_EnableChannel(LPC_DMA, DMAREQ_DMIC0);
	Chip_DMA_EnableChannel(LPC_DMA, DMAREQ_DMIC1);
	Chip_DMA_EnableChannel(LPC_DMA, DMAREQ_FLEXCOMM0_TX);

	/* Need to attach FRO12MHz to DMIC CLK */
	LPC_SYSCON->DMICCLKSEL = 0;

	LPC_SYSCON->DMICCLKDIV = 14; /* 12MHz divided by 15 = 800kHz PDM clock */

	dmic_channel_cfg[0].side       = DMIC_LEFT;
	dmic_channel_cfg[0].divhfclk   = DMIC_PDM_DIV1;
	dmic_channel_cfg[0].gainshft   = 2;
	dmic_channel_cfg[0].osr        = 25;
	dmic_channel_cfg[0].preac2coef = DMIC_COMP0_0;
	dmic_channel_cfg[0].preac4coef = DMIC_COMP0_0;

	dmic_channel_cfg[1].side       = DMIC_RIGHT;
	dmic_channel_cfg[1].divhfclk   = DMIC_PDM_DIV1;
	dmic_channel_cfg[1].gainshft   = 2;
	dmic_channel_cfg[1].osr        = 25;
	dmic_channel_cfg[1].preac2coef = DMIC_COMP0_0;
	dmic_channel_cfg[1].preac4coef = DMIC_COMP0_0;

	Chip_DMIC_Init(SYSCON_CLOCK_DMIC, RESET_DMIC);
	Chip_DMIC_CfgIO(LPC_DMIC, pdm_stereo);
	Chip_DMIC_SetOpMode(LPC_DMIC,DMIC_OP_DMA);
	Chip_DMIC_Use2fs(LPC_DMIC,true);
	Chip_DMIC_CfgChannel(LPC_DMIC, 0, &dmic_channel_cfg[0]);
	Chip_DMIC_CfgChannel(LPC_DMIC, 1, &dmic_channel_cfg[1]);
	Chip_DMIC_CfgChannelDc(LPC_DMIC, 0,DMIC_DC_CUT155,0,true);
	Chip_DMIC_CfgChannelDc(LPC_DMIC, 1,DMIC_DC_CUT155,0,true);
	Chip_DMIC_FifoChannel(LPC_DMIC, 0, 15, true, true);
	Chip_DMIC_FifoChannel(LPC_DMIC, 1, 15, true, true);

	LPC_DMIC->HWVADTHGN = 0;
	LPC_DMIC->HWVADTHGS = 1;

	NVIC_EnableIRQ(DMA_IRQn);
	NVIC_EnableIRQ(HWVAD_IRQn);
	Chip_SYSCON_EnableWakeup(SYSCON_STARTER_DMA);
	Chip_SYSCON_EnableWakeup(SYSCON_STARTER_HWVAD);

	Chip_DMIC_EnableChannnel(LPC_DMIC, 0x3);
	while (loop) {

		__disable_irq();
		LPC_SYSCON->AHBCLKDIV = 12;
		__WFI();
		LPC_SYSCON->AHBCLKDIV = 0;
		__enable_irq();
	}
	return 0;
};
