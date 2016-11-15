/*
 * @brief UART interrupt example with ring buffers
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

#include "chip.h"
#include "board.h"
#include "string.h"

/*****************************************************************************
 * Private types/enumerations/variables
 ****************************************************************************/
#define USART1_FLEXCOMM 			2
#define BUFF_SZ		 				128
#define LPC_USART       			LPC_USART1
#define LPC_IRQNUM      			USART1_IRQn
#define LPC_UARTHNDLR   			USART1_IRQHandler
#define UART_TEST_DEFAULT_BAUDRATE	115200

UART_STATISTICS_T	uart_stat;
char				rx_buff[BUFF_SZ];
const char*			start_up = "LPC5411x UART-DMA example. Built: " __DATE__ ", " __TIME__ "\r\n";

volatile bool		dma_tx_done, dma_rx_done;

/*****************************************************************************
 * Public types/enumerations/variables
 ****************************************************************************/

/*****************************************************************************
 * Private functions
 ****************************************************************************/

static void Init_UART_PinMux(void)
{
#if defined(BOARD_NXP_LPCXPRESSO_54114)
	Chip_IOCON_PinMuxSet(LPC_IOCON, 0, 8, IOCON_MODE_INACT | IOCON_FUNC1 | IOCON_DIGITAL_EN | IOCON_INPFILT_OFF);
	Chip_IOCON_PinMuxSet(LPC_IOCON, 0, 9, IOCON_MODE_INACT | IOCON_FUNC1 | IOCON_DIGITAL_EN | IOCON_INPFILT_OFF);
#else
	/* Configure your own UART pin muxing here if needed */
#warning No UART pin muxing defined
#endif
}

static void UART_config(void)
{
	int ret;
	
	ret = Chip_UART_Init(LPC_USART);
	LPC_ASSERT(ret == 0, __FILE__, __LINE__);
	Chip_UART_SetBaud(LPC_USART, 115200);
	Chip_UART_ConfigData(LPC_USART, UART_CFG_DATALEN_8 | UART_CFG_PARITY_NONE | UART_CFG_STOPLEN_1);
	Chip_UART_ConfigDMA(LPC_USART);

	Chip_UART_Enable(LPC_USART);
	Chip_UART_TXEnable(LPC_USART);
	Chip_UART_SetFIFOTrigLevel(LPC_USART, 8, 0);

	/* enable start, break, and the standard character errors (framing, parity, and noise) */
	Chip_UART_IntEnable(LPC_USART, UART_INT_START);
	Chip_UART_IntEnable(LPC_USART, UART_INT_DELTARXBRK);
	Chip_UART_IntEnable(LPC_USART, (UART_INT_FRAMERR|UART_INT_PARITYERR|UART_INT_RXNOISE));
	
	/* preemption = 1, sub-priority = 1 */
	NVIC_EnableIRQ(LPC_IRQNUM);
}

static void DMA_config(void)
{
	Chip_DMA_Init(LPC_DMA);

	Chip_DMA_Enable(LPC_DMA);
	Chip_DMA_SetSRAMBase(LPC_DMA, DMA_ADDR(Chip_DMA_Table));

	Chip_DMA_EnableChannel(LPC_DMA, DMAREQ_USART1_TX);
	Chip_DMA_EnableIntChannel(LPC_DMA, DMAREQ_USART1_TX);
	Chip_DMA_SetupChannelConfig(LPC_DMA, DMAREQ_USART1_TX,(DMA_CFG_PERIPHREQEN | DMA_CFG_TRIGTYPE_EDGE | DMA_CFG_TRIGPOL_HIGH | DMA_CFG_BURSTPOWER_8 | DMA_CFG_CHPRIORITY(0)));

	Chip_DMA_EnableChannel(LPC_DMA, DMAREQ_USART1_RX);
	Chip_DMA_EnableIntChannel(LPC_DMA, DMAREQ_USART1_RX);
	Chip_DMA_SetupChannelConfig(LPC_DMA, DMAREQ_USART1_RX,(DMA_CFG_PERIPHREQEN | DMA_CFG_TRIGTYPE_EDGE | DMA_CFG_TRIGPOL_HIGH | DMA_CFG_BURSTPOWER_1 | DMA_CFG_CHPRIORITY(1)));
	
	/* Enable DMA interrupt */
	NVIC_EnableIRQ(DMA_IRQn);
}

static void DMA_tx_buff(const char* buff)
{
	DMA_CHDESC_T		dmaDesc;
	uint32_t			len = strlen(buff);

	dma_tx_done = false;
	dmaDesc.source	= DMA_ADDR(buff + len-1);
	dmaDesc.dest	= DMA_ADDR(&(LPC_USART->FIFOWR));
	dmaDesc.next	= DMA_ADDR(NULL);

	Chip_DMA_SetupTranChannel(LPC_DMA, DMAREQ_USART1_TX, &dmaDesc);
	Chip_DMA_SetValidChannel(LPC_DMA, DMAREQ_USART1_TX);

	Chip_DMA_SetupChannelTransfer(LPC_DMA, DMAREQ_USART1_TX, (DMA_XFERCFG_CFGVALID | DMA_XFERCFG_SETINTA | DMA_XFERCFG_SWTRIG | DMA_XFERCFG_WIDTH_8 | DMA_XFERCFG_SRCINC_1 | DMA_XFERCFG_DSTINC_0 | DMA_XFERCFG_XFERCOUNT(len)));

	while (dma_tx_done == false) {
		__WFI();
	}
}

static void DMA_rx_buff(char* buff, uint32_t len)
{
	DMA_CHDESC_T		dmaDesc;

	dma_rx_done = false;
	dmaDesc.source	= DMA_ADDR(&(LPC_USART->FIFORD));
	dmaDesc.dest	= DMA_ADDR(buff + len-1);
	dmaDesc.next	= DMA_ADDR(NULL);

	Chip_DMA_SetupTranChannel(LPC_DMA, DMAREQ_USART1_RX, &dmaDesc);
	Chip_DMA_SetValidChannel(LPC_DMA, DMAREQ_USART1_RX);

	Chip_DMA_SetupChannelTransfer(LPC_DMA, DMAREQ_USART1_RX, (DMA_XFERCFG_CFGVALID | DMA_XFERCFG_SETINTA | DMA_XFERCFG_SWTRIG | DMA_XFERCFG_WIDTH_8 | DMA_XFERCFG_SRCINC_0 | DMA_XFERCFG_DSTINC_1 | DMA_XFERCFG_XFERCOUNT(len)));

	while (dma_rx_done == false) {
		__WFI();
	}
}

/*****************************************************************************
 * Public functions
 ****************************************************************************/

/**
 * @brief	UART interrupt handler using ring buffers
 * @return	Nothing
 */
void LPC_UARTHNDLR(void)
{
	Chip_UART_IRQHandlerDMA(LPC_USART, &uart_stat);
}

/**
 * @brief	DMA Interrupt Handler
 * @return	None
 */
void DMA_IRQHandler(void)
{
	uint32_t dma_inta;
	dma_inta = Chip_DMA_GetActiveIntAChannels(LPC_DMA);
	
	if (dma_inta & (1<<DMAREQ_USART1_RX)) {
		Chip_DMA_ClearActiveIntAChannel(LPC_DMA, DMAREQ_USART1_RX);
		dma_rx_done = true;
	}
	
	if (dma_inta & (1<<DMAREQ_USART1_TX)) {
		Chip_DMA_ClearActiveIntAChannel(LPC_DMA, DMAREQ_USART1_TX);
		dma_tx_done = true;
	}
}

/**
 * @brief	Main UART program body
 * @return	Always returns 0
 */
int main(void)
{
	SystemCoreClockUpdate();
	Board_Init();
	Init_UART_PinMux();

	UART_config();
	DMA_config();

	DMA_tx_buff(start_up);
	DMA_tx_buff("Short test string.\r\n");
	DMA_tx_buff("This is a very long, interesting test string to verify that long strings can be passed via DMA.\r\n");
	DMA_tx_buff("DMA receive test: Please enter 4 characters: ");

	memset(rx_buff, 0, BUFF_SZ);
	DMA_rx_buff(rx_buff, 4);
	DMA_tx_buff(rx_buff);
	DMA_tx_buff("\r\nTest complete\r\n");
	
	return 0;
}
