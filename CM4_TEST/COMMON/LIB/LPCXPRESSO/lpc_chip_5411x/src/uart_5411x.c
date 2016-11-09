/*
 * @brief LPC5411X UART driver
 *
 * @note
 * Copyright(C) NXP Semiconductors, 2015
 * All rights reserved.
 *
 * @par
 * Software that is described herein is for illustrative purposes only
 * which provides customers with programming information regarding the
 * LPC products.  This software is supplied "AS IS" without any warranties of
 * any kind, and NXP Semiconductors and its licenser disclaim any and
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

/*****************************************************************************
 * Private types/enumerations/variables
 ****************************************************************************/
static const uint32_t fifo_config_int = (UART_FIFOCFG_ENABLETX | UART_FIFOCFG_ENABLERX);
static const uint32_t fifo_config_dma = (UART_FIFOCFG_ENABLETX | UART_FIFOCFG_ENABLERX | UART_FIFOCFG_DMATX | UART_FIFOCFG_DMARX);
	
/*****************************************************************************
 * Public types/enumerations/variables
 ****************************************************************************/

/*****************************************************************************
 * Private functions
 ****************************************************************************/
/* PRIVATE: Division logic to divide without integer overflow */
static uint32_t _UART_DivClk(uint32_t pclk, uint32_t m)
{
	uint32_t q, r, u = pclk >> 24, l = pclk << 8;
	m = m + 256;
	q = (1 << 24) / m;
	r = (1 << 24) - (q * m);
	return ((q * u) << 8) + (((r * u) << 8) + l) / m;
}

/* PRIVATE: Get highest Over sampling value */
static uint32_t _UART_GetHighDiv(uint32_t val, uint8_t strict)
{
	int32_t i, max = strict ? 16 : 5;
	for (i = 16; i >= max; i--) {
		if (!(val % i)) {
			return i;
		}
	}
	return 0;
}

/* Calculate error difference */
static int32_t _CalcErr(uint32_t n, uint32_t d, uint32_t *prev)
{
	uint32_t err = n - (n / d) * d;
	uint32_t herr = ((n / d) + 1) * d - n;
	if (herr < err) {
		err = herr;
	}

	if (*prev <= err) {
		return 0;
	}
	*prev = err;
	return (herr == err) + 1;
}

/* Calculate the base DIV value */
static ErrorCode_t _UART_CalcDiv(UART_BAUD_T *ub)
{
	int32_t i = 0;
	uint32_t perr = ~0UL;

	if (!ub->div) {
		i = ub->ovr ? ub->ovr : 16;
	}

	for (; i > 4; i--) {
		int32_t tmp = _CalcErr(ub->clk, ub->baud * i, &perr);

		/* Continue when no improvement seen in err value */
		if (!tmp) {
			continue;
		}

		ub->div = tmp - 1;
		if (ub->ovr == i) {
			break;
		}
		ub->ovr = i;
	}

	if (!ub->ovr) {
		return ERR_UART_BAUDRATE;
	}

	ub->div += ub->clk / (ub->baud * ub->ovr);
	if (!ub->div) {
		return ERR_UART_BAUDRATE;
	}

	ub->baud = ub->clk / (ub->div * ub->ovr);
	return LPC_OK;
}

/* Calculate the best MUL value */
static void _UART_CalcMul(UART_BAUD_T *ub)
{
	uint32_t m, perr = ~0UL, pclk = ub->clk, ovr = ub->ovr;

	/* If clock is UART's base clock calculate only the divider */
	for (m = 0; m < 256; m++) {
		uint32_t ov = ovr, x, v, tmp;

		/* Get clock and calculate error */
		x = _UART_DivClk(pclk, m);
		tmp = _CalcErr(x, ub->baud, &perr);
		v = (x / ub->baud) + tmp - 1;

		/* Update if new error is better than previous best */
		if (!tmp || (ovr && (v % ovr)) ||
			(!ovr && ((ov = _UART_GetHighDiv(v, ovr)) == 0))) {
			continue;
		}

		ub->ovr = ov;
		ub->mul = m;
		ub->clk = x;
		ub->div = tmp - 1;
	}
}

/*****************************************************************************
 * Public functions
 ****************************************************************************/

/* Initialize the UART peripheral (polled or interrupts) */
int Chip_UART_Init(LPC_USART_T *pUART)
{
	int ret;

	ret = Chip_FLEXCOMM_Init(pUART, FLEXCOMM_PERIPH_USART);						/* Init the flexcomm to be a UART */
	if (ret == 0) {																/* Enable the FIFOs */
		Chip_UART_SetFIFOCfg(pUART, fifo_config_int);							/* enable interrupt based transfers */
		Chip_UART_FlushFIFOs(pUART);											/* clear FIFOs */
	}
	return ret;
}

/* Initialize the UART peripheral */
void Chip_UART_DeInit(LPC_USART_T *pUART)
{
	Chip_FLEXCOMM_DeInit(pUART);
}

/* Configure UART peripheral for DMA */
void Chip_UART_ConfigDMA(LPC_USART_T *pUART)
{
	Chip_UART_SetFIFOCfg(pUART, fifo_config_dma);								/* enable DMA based transfers */
}

/* Transmit a byte array through the UART peripheral (non-blocking) */
int Chip_UART_Send(LPC_USART_T *pUART, const void *data, int numBytes)
{
	int sent = 0;
	uint8_t *p8 = (uint8_t *) data;

	/* Send until the transmit FIFO is full or out of bytes */
	while ((sent < numBytes) && (Chip_UART_GetFIFOStatus(pUART) & UART_FIFOSTAT_TXNOTFULL)) {
		Chip_UART_SendByte(pUART, *p8);
		p8++, sent++;
	}

	return sent;
}

/* Transmit a byte array through the UART peripheral (blocking) */
int Chip_UART_SendBlocking(LPC_USART_T *pUART, const void *data, int numBytes)
{
	int pass, sent = 0;
	uint8_t *p8 = (uint8_t *) data;

	while (numBytes > 0) {
		pass = Chip_UART_Send(pUART, p8, numBytes);
		numBytes -= pass;
		sent += pass;
		p8 += pass;
	}

	return sent;
}

/* Read data through the UART peripheral (non-blocking) */
int Chip_UART_Read(LPC_USART_T *pUART, void *data, int numBytes)
{
	int readBytes = 0;
	uint8_t *p8 = (uint8_t *) data;

	/* Get data until the transmit FIFO is empty or buffer is full */
	while ((readBytes < numBytes) && ((Chip_UART_GetFIFOStatus(pUART) & UART_FIFOSTAT_RXNOTEMPTY) != 0)) {
		*p8 = Chip_UART_ReadByte(pUART);
		p8++, readBytes++;
	}

	return readBytes;
}

/* Read data through the UART peripheral (blocking) */
int Chip_UART_ReadBlocking(LPC_USART_T *pUART, void *data, int numBytes)
{
	int pass, readBytes = 0;
	uint8_t *p8 = (uint8_t *) data;

	while (numBytes > 0) {
		pass = Chip_UART_Read(pUART, p8, numBytes);
		numBytes -= pass;
		readBytes += pass;
		p8 += pass;
	}

	return readBytes;
}

/* EXPORTED API: Calculate UART Baudrate divisors */
int Chip_UART_CalculateBaud(UART_BAUD_T *baud)
{
	if (!baud->mul) {
		_UART_CalcMul(baud);
	}

	return _UART_CalcDiv(baud);
}

/* Set baud rate for UART */
uint32_t Chip_UART_SetBaud(LPC_USART_T *pUART, uint32_t baudrate)
{
	UART_BAUD_T baud;
	int idx = Chip_FLEXCOMM_GetIndex(pUART);

	if (idx < 0)
		return idx;

	/* Set clock source for fractional divider if not set already */
	if (Chip_Clock_GetFRGClockSource() == SYSCON_FRGCLKSRC_NONE) {
		Chip_Clock_SetFRGClockSource(SYSCON_FRGCLKSRC_FRO12MHZ);
	}
	baud.baud = baudrate;
	baud.clk = Chip_Clock_GetFRGInClockRate();
	baud.div = baud.mul = baud.ovr = 0;
	if (Chip_UART_CalculateBaud(&baud) != LPC_OK) {
		return 0;
	}

	pUART->OSR = (baud.ovr - 1) & 0x0F;
	pUART->BRG = (baud.div - 1) & 0xFFFF;
	Chip_SYSCON_SetUSARTFRGCtrl(baud.mul, 255);
	Chip_Clock_SetFLEXCOMMClockSource(idx, SYSCON_FLEXCOMMCLKSELSRC_FRG);
	return baud.baud;
}

/* UART receive-only interrupt handler for ring buffers */
void Chip_UART_RXIntHandlerRB(LPC_USART_T *pUART, RINGBUFF_T *pRB)
{
	/* New data will be ignored if data not popped in time */
	while ((Chip_UART_GetFIFOStatus(pUART) & UART_FIFOSTAT_RXNOTEMPTY) != 0) {
		uint8_t ch = Chip_UART_ReadByte(pUART);
		RingBuffer_Insert(pRB, &ch);
	}
}

/* UART transmit-only interrupt handler for ring buffers */
void Chip_UART_TXIntHandlerRB(LPC_USART_T *pUART, RINGBUFF_T *pRB)
{
	uint8_t ch;

	/* Fill FIFO until full or until TX ring buffer is empty */
	while ((Chip_UART_GetFIFOStatus(pUART) & UART_FIFOSTAT_TXNOTFULL) && RingBuffer_Pop(pRB, &ch)) {
		Chip_UART_SendByte(pUART, ch);
	}
}

/* Populate a transmit ring buffer and start UART transmit */
uint32_t Chip_UART_SendRB(LPC_USART_T *pUART, RINGBUFF_T *pRB, const void *data, int count)
{
	uint32_t ret;
	uint8_t *p8 = (uint8_t *) data;

	/* Don't let UART transmit ring buffer change in the UART IRQ handler */
	Chip_UART_DisableFIFOInts(pUART, UART_FIFOINT_TXLVL);

	/* Move as much data as possible into transmit ring buffer */
	ret = RingBuffer_InsertMult(pRB, p8, count);
	Chip_UART_TXIntHandlerRB(pUART, pRB);

	/* Enable UART transmit interrupt */
	Chip_UART_EnableFIFOInts(pUART, UART_FIFOINT_TXLVL);

	return ret;
}

/* Copy data from a receive ring buffer */
int Chip_UART_ReadRB(LPC_USART_T *pUART, RINGBUFF_T *pRB, void *data, int bytes)
{
	(void) pUART;

	return RingBuffer_PopMult(pRB, (uint8_t *) data, bytes);
}

/* UART receive/transmit interrupt handler for ring buffers */
void Chip_UART_IRQHandlerRB(LPC_USART_T *pUART, UART_STATISTICS_T* stat, RINGBUFF_T *pRXRB, RINGBUFF_T *pTXRB)
{
	uint32_t fifo_int_stat, uart_int_stat;

	if (stat) stat->interrupts+=1;												/* bump interrupt ct (if statistics structure available) */

	fifo_int_stat = Chip_UART_GetFIFOPendingInts(pUART);						/* get FIFO status */
	if (fifo_int_stat & UART_FIFOINT_TXERR) {									/* process tx error */
		if (stat) stat->fifo_err_tx+=1;											/* bump err ctr */
		Chip_UART_ClearFIFOStatus(pUART, UART_FIFOSTAT_TXERR);					/* clear tx error */
	}
	if (fifo_int_stat & UART_FIFOINT_RXERR) {									/* process rx error */
		if (stat) stat->fifo_err_rx+=1;											/* bump err ctr */
		Chip_UART_ClearFIFOStatus(pUART, UART_FIFOSTAT_RXERR);					/* clear rx error */
	}
	if (fifo_int_stat & UART_FIFOINT_TXLVL) {									/* process tx level interrupt */
		if (stat) stat->lvl_tx+=1;												/* bump statistics */
		Chip_UART_TXIntHandlerRB(pUART, pTXRB);									/* process ring buffer */
		if (RingBuffer_IsEmpty(pTXRB)) {										/* if ring is empty... */
			Chip_UART_DisableFIFOInts(pUART, UART_FIFOINT_TXLVL);				/* disable tx interrupt */
		}
	}
	if (fifo_int_stat & UART_FIFOINT_RXLVL) {									/* process receive interrupt */
		if (stat) stat->lvl_rx+=1;												/* bump statistics */
		Chip_UART_RXIntHandlerRB(pUART, pRXRB);									/* process interrupt */
	}
	if (fifo_int_stat & UART_FIFOINT_PERINT) {									/* process peripheral interrupt */
		uart_int_stat = Chip_UART_GetStatus(pUART);								/* get peripheral status */
		if (uart_int_stat & UART_STAT_DELTACTS) {								/* check for CTS change */
			if (stat) stat->uart_cts+=1;										/* bump statistics */
			Chip_UART_ClearStatus(pUART, UART_STAT_DELTACTS);					/* clear status */
		}
		if (uart_int_stat & UART_STAT_DELTARXBRK) {								/* test for break change */
			if (stat) stat->uart_break+=1;										/* bump statistics */
			Chip_UART_ClearStatus(pUART, UART_STAT_DELTARXBRK);					/* clear status */
		}
		if (uart_int_stat & UART_STAT_START) {									/* test for start condition*/
			if (stat) stat->uart_start+=1;										/* bump statistics */
			Chip_UART_ClearStatus(pUART, UART_STAT_START);						/* clear status */
		}
		if (uart_int_stat & UART_STAT_FRM_ERRINT) {								/* test for framing error */
			if (stat) stat->uart_err_frame+=1;                                  /* bump statistics */
			Chip_UART_ClearStatus(pUART, UART_STAT_FRM_ERRINT);                 /* clear status */
		}
		if (uart_int_stat & UART_STAT_PAR_ERRINT) {								/* test for parity error */
			if (stat) stat->uart_err_parity+=1;                                 /* bump statistics */
			Chip_UART_ClearStatus(pUART, UART_STAT_PAR_ERRINT);                 /* clear status */
		}
		if (uart_int_stat & UART_STAT_RXNOISEINT) {								/* test for RX noise error */
			if (stat) stat->uart_err_rx_noise+=1;                               /* bump statistics */
			Chip_UART_ClearStatus(pUART, UART_STAT_RXNOISEINT);                 /* clear status */
		}
		if (uart_int_stat & UART_STAT_ABERR) {									/* test for auto-baud error */
			if (stat) stat->uart_err_auto_baud+=1;                              /* bump statistics */
			Chip_UART_ClearStatus(pUART, UART_STAT_ABERR);                      /* clear status */
		}
	}
}

/* UART receive/transmit interrupt handler for ring buffers */
void Chip_UART_IRQHandlerDMA(LPC_USART_T *pUART, UART_STATISTICS_T* stat)
{
	uint32_t fifo_int_stat, uart_int_stat;

	if (stat) stat->interrupts+=1;												/* bump interrupt ct (if statistics structure available) */

	fifo_int_stat = Chip_UART_GetFIFOPendingInts(pUART);						/* get FIFO status */
	if (fifo_int_stat & UART_FIFOINT_TXERR) {									/* process tx error */
		if (stat) stat->fifo_err_tx+=1;											/* bump err ctr */
		Chip_UART_ClearFIFOStatus(pUART, UART_FIFOSTAT_TXERR);					/* clear tx error */
	}

	if (fifo_int_stat & UART_FIFOINT_RXERR) {									/* process rx error */
		if (stat) stat->fifo_err_rx+=1;											/* bump err ctr */
		Chip_UART_ClearFIFOStatus(pUART, UART_FIFOSTAT_RXERR);					/* clear rx error */
	}

	if (fifo_int_stat & UART_FIFOINT_TXLVL) {									/* process tx level interrupt */
		if (stat) stat->lvl_tx+=1;												/* bump statistics */
		Chip_UART_DisableFIFOInts(pUART, UART_FIFOINT_TXLVL);					/* disable tx interrupt */
	}

	if (fifo_int_stat & UART_FIFOINT_RXLVL) {									/* process receive interrupt */
		if (stat) stat->lvl_rx+=1;												/* bump statistics */
		Chip_UART_DisableFIFOInts(pUART, UART_FIFOINT_RXLVL);					/* disable rx interrupt */
	}

	if (fifo_int_stat & UART_FIFOINT_PERINT) {									/* process peripheral interrupt */
		uart_int_stat = Chip_UART_GetStatus(pUART);								/* get peripheral status */
		if (uart_int_stat & UART_STAT_DELTACTS) {								/* check for CTS change */
			if (stat) stat->uart_cts+=1;										/* bump statistics */
			Chip_UART_ClearStatus(pUART, UART_STAT_DELTACTS);					/* clear status */
		}
		if (uart_int_stat & UART_STAT_DELTARXBRK) {								/* test for break change */
			if (stat) stat->uart_break+=1;										/* bump statistics */
			Chip_UART_ClearStatus(pUART, UART_STAT_DELTARXBRK);					/* clear status */
		}
		if (uart_int_stat & UART_STAT_START) {									/* test for start condition*/
			if (stat) stat->uart_start+=1;										/* bump statistics */
			Chip_UART_ClearStatus(pUART, UART_STAT_START);						/* clear status */
		}
		if (uart_int_stat & UART_STAT_FRM_ERRINT) {								/* test for framing error */
			if (stat) stat->uart_err_frame+=1;                                  /* bump statistics */
			Chip_UART_ClearStatus(pUART, UART_STAT_FRM_ERRINT);                 /* clear status */
		}
		if (uart_int_stat & UART_STAT_PAR_ERRINT) {								/* test for parity error */
			if (stat) stat->uart_err_parity+=1;                                 /* bump statistics */
			Chip_UART_ClearStatus(pUART, UART_STAT_PAR_ERRINT);                 /* clear status */
		}
		if (uart_int_stat & UART_STAT_RXNOISEINT) {								/* test for RX noise error */
			if (stat) stat->uart_err_rx_noise+=1;                               /* bump statistics */
			Chip_UART_ClearStatus(pUART, UART_STAT_RXNOISEINT);                 /* clear status */
		}
		if (uart_int_stat & UART_STAT_ABERR) {									/* test for auto-baud error */
			if (stat) stat->uart_err_auto_baud+=1;                              /* bump statistics */
			Chip_UART_ClearStatus(pUART, UART_STAT_ABERR);                      /* clear status */
		}
	}
}
