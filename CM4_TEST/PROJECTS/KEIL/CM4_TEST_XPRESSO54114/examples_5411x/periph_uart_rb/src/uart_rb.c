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
#define UART_RB_SIZE 				512
#define LPC_USART       			LPC_USART1
#define LPC_IRQNUM      			USART1_IRQn
#define LPC_UARTHNDLR   			USART1_IRQHandler
#define UART_TEST_DEFAULT_BAUDRATE	115200

RINGBUFF_T			txring, rxring;
UART_STATISTICS_T	uart_stat;
uint8_t				rxbuff[UART_RB_SIZE], txbuff[UART_RB_SIZE];
char				spf_buff[128];
const char			inst1[] = "LPC5411x UART example using ring buffers. Built: " __DATE__ ", " __TIME__ "\r\n";
const char			inst2[] = "Press a key to echo it back or ESC to quit\r\n";

/*****************************************************************************
 * Public types/enumerations/variables
 ****************************************************************************/

/*****************************************************************************
 * Private functions
 ****************************************************************************/

/* UART Pin mux function */
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

/*****************************************************************************
 * Public functions
 ****************************************************************************/

/**
 * @brief	UART interrupt handler using ring buffers
 * @return	Nothing
 */
void LPC_UARTHNDLR(void)
{
	Chip_UART_IRQHandlerRB(LPC_USART, &uart_stat, &rxring, &txring);
}

/**
 * @brief	Main UART program body
 * @return	Always returns 0
 */
int main(void)
{
	uint8_t key=0;
	int bytes, ret;

	SystemCoreClockUpdate();
	Board_Init();
	Init_UART_PinMux();
	Board_LED_Set(0, false);

	/* Setup UART */
	ret = Chip_UART_Init(LPC_USART);
	LPC_ASSERT(ret == 0, __FILE__, __LINE__);
	Chip_UART_SetBaud(LPC_USART, 115200);
	Chip_UART_ConfigData(LPC_USART, UART_CFG_DATALEN_8 | UART_CFG_PARITY_NONE | UART_CFG_STOPLEN_1);

	Chip_UART_Enable(LPC_USART);
	Chip_UART_TXEnable(LPC_USART);
	Chip_UART_SetFIFOTrigLevel(LPC_USART, 8, 0);

	/* enable start, break, and the standard character errors (framing, parity, and noise) */
	Chip_UART_IntEnable(LPC_USART, UART_INT_START);
	Chip_UART_IntEnable(LPC_USART, UART_INT_DELTARXBRK);
	Chip_UART_IntEnable(LPC_USART, (UART_INT_FRAMERR|UART_INT_PARITYERR|UART_INT_RXNOISE));
	
	/* enable all FIFO interrupts */
	Chip_UART_EnableFIFOInts(LPC_USART, (UART_FIFOINT_TXERR|UART_FIFOINT_RXERR|UART_FIFOINT_TXLVL|UART_FIFOINT_RXLVL));

	/* Before using the ring buffers, initialize them using the ring buffer init function */
	RingBuffer_Init(&rxring, rxbuff, 1, UART_RB_SIZE, NULL);
	RingBuffer_Init(&txring, txbuff, 1, UART_RB_SIZE, NULL);

	/* preemption = 1, sub-priority = 1 */
	NVIC_EnableIRQ(LPC_IRQNUM);

	/* Initial message sent using blocking, the second message uses the ring buffer */
	Chip_UART_SendBlocking(LPC_USART, inst1, sizeof(inst1) - 1);
	Chip_UART_SendRB(LPC_USART, &txring, inst2, sizeof(inst2) - 1);

	/* Poll the receive ring buffer for the ESC (ASCII 27) key */
	while (true) {
		bytes = Chip_UART_ReadRB(LPC_USART, &rxring, &key, 8);
		if (bytes > 0) {
			if (key == 27) break;
			Chip_UART_SendRB(LPC_USART, &txring, (const uint8_t *) &key, bytes);
			Board_LED_Toggle(0);
		}
	}

	sprintf(spf_buff, "\r\nStatistics:\r\n");
	Chip_UART_SendRB(LPC_USART, &txring, spf_buff, strlen(spf_buff));

	sprintf(spf_buff, "- interrupts: %d\r\n", uart_stat.interrupts);
	Chip_UART_SendRB(LPC_USART, &txring, spf_buff, strlen(spf_buff));

	sprintf(spf_buff, "- fifo tx level: %d\r\n", uart_stat.lvl_tx);
	Chip_UART_SendRB(LPC_USART, &txring, spf_buff, strlen(spf_buff));

	sprintf(spf_buff, "- fifo rx level: %d\r\n", uart_stat.lvl_rx);
	Chip_UART_SendRB(LPC_USART, &txring, spf_buff, strlen(spf_buff));

	sprintf(spf_buff, "- fifo tx error: %d\r\n", uart_stat.fifo_err_tx);
	Chip_UART_SendRB(LPC_USART, &txring, spf_buff, strlen(spf_buff));

	sprintf(spf_buff, "- fifo rx error: %d\r\n", uart_stat.fifo_err_rx);
	Chip_UART_SendRB(LPC_USART, &txring, spf_buff, strlen(spf_buff));

	sprintf(spf_buff, "- uart delta CTS: %d\r\n", uart_stat.uart_cts);
	Chip_UART_SendRB(LPC_USART, &txring, spf_buff, strlen(spf_buff));

	sprintf(spf_buff, "- uart delta break: %d\r\n", uart_stat.uart_break);
	Chip_UART_SendRB(LPC_USART, &txring, spf_buff, strlen(spf_buff));

	sprintf(spf_buff, "- uart start count: %d\r\n", uart_stat.uart_start);
	Chip_UART_SendRB(LPC_USART, &txring, spf_buff, strlen(spf_buff));

	sprintf(spf_buff, "- uart framing error: %d\r\n", uart_stat.uart_err_frame);
	Chip_UART_SendRB(LPC_USART, &txring, spf_buff, strlen(spf_buff));

	sprintf(spf_buff, "- uart parity error: %d\r\n", uart_stat.uart_err_parity);
	Chip_UART_SendRB(LPC_USART, &txring, spf_buff, strlen(spf_buff));
	
	sprintf(spf_buff, "- uart rx noise error: %d\r\n", uart_stat.uart_err_rx_noise);
	Chip_UART_SendRB(LPC_USART, &txring, spf_buff, strlen(spf_buff));
	
	sprintf(spf_buff, "- uart auto baud error: %d\r\n", uart_stat.uart_err_auto_baud);
	Chip_UART_SendRB(LPC_USART, &txring, spf_buff, strlen(spf_buff));

	return 0;
}
