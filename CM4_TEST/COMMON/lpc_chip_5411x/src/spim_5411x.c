/*
 * @brief LPC5411X SPI master driver
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

/*****************************************************************************
 * Public types/enumerations/variables
 ****************************************************************************/

/*****************************************************************************
 * Private functions
 ****************************************************************************/
/* Get data from the transmit buffer within the xfer structure */
static uint16_t get_tx_data(SPIM_XFER_T *xfer)
{
	uint16_t data = 0xffff;													/* declare / preload data */

	if ((xfer->txData == NULL) || (xfer->txCount == 0)) {					/* if there's no tx buffer, or tx count is zero... */
		return data;														/* return data */
	}
	
	if (xfer->txIndex < xfer->txCount) {									/* If there is data in the buffer... */
		if (xfer->dataWidth > 8) {											/* If the buffer width is larger than 8... */
			data = ((uint16_t *) xfer->txData)[xfer->txIndex];				/* get 16-bit data */
		} else {			                                                
			data = ((uint8_t *) xfer->txData)[xfer->txIndex];				/* get 8-bit data */
		}			                                                        
		xfer->txIndex+=1;													/* bump buffer index */
	}			                                                            
	return data;															/* return data */
}

/* Put data into the rx-buffer within the xfer structure */
static void put_rx_data(SPIM_XFER_T *xfer, uint16_t data)
{
	if ((xfer->rxData == NULL) || (xfer->rxCount == 0)) {					/* if there's no rx buffer, or rx count is zero... */
		return;																/* exit */
	}

	if (xfer->rxIndex < xfer->rxCount) {									/* if there is still space in the buffer... */
		if (xfer->dataWidth > 8) {											/* if buffer width is larger than 8... */
			((uint16_t *) xfer->rxData)[xfer->rxIndex] = data;				/* save 16-bit data */
		} else {
			((uint8_t *) xfer->rxData)[xfer->rxIndex] = (uint8_t) data;		/* save 8-bit data */
		}
		xfer->rxIndex+=1;													/* bump buffer index */
	}
}

/* Make TXDATCTL value based on the given xfer pointer */
static uint16_t spim_get_xfercfg(const SPIM_XFER_T *xfer)
{
	uint16_t val;

	/* Setup flags required for transfer */
	val  = SPI_TXDAT_DEASSERT_ALL & ~SPI_TXDAT_DEASSERTNUM_SSEL(xfer->sselNum);
	val |= SPI_TXDAT_FLEN(xfer->dataWidth-1);
	val |= (xfer->option & SPIM_XFER_OPT_FRAME_DLY)		? SPI_TXDAT_EOF : 0;
	val |= (xfer->option & SPIM_XFER_OPT_FRAME_ASSERT)	? SPI_TXDAT_EOT : 0;
	
	/* Ignore recevied data? */
	if ((xfer->rxCount == 0)||(xfer->rxData == 0)) {
		val |= SPI_TXDAT_RXIGNORE;
	}
	return val;
}

/* Do a single data read and/or write based on the given status */
static void spim_do_txrx(LPC_SPI_T *pSPI, uint32_t stat, SPIM_XFER_T *xfer)
{
	int	len = MAX(xfer->rxCount, xfer->txCount);
	uint16_t data, wr_opt;
	
	/* Read SPI data*/
	if (stat & SPI_FIFOSTAT_RXNOTEMPTY) {
		data = Chip_SPI_ReadFIFOdata(pSPI);
		put_rx_data(xfer, data);
	}

	/* Write SPI data*/
	if (xfer->txIndex < len && (stat & SPI_FIFOSTAT_TXNOTFULL)) {
		data = get_tx_data(xfer);
		wr_opt = spim_get_xfercfg(xfer) | ((xfer->txIndex == len) ? SPI_TXDAT_EOT : 0);
		Chip_SPI_WriteFIFOcd(pSPI, wr_opt, data);
	}
}

/*****************************************************************************
 * Public functions
 ****************************************************************************/

/* Set SPI master bit rate */
uint32_t Chip_SPIM_SetClockRate(LPC_SPI_T *pSPI, uint32_t rate)
{
	uint32_t div;
	uint32_t clk = Chip_Clock_GetFLEXCOMMClockRate(Chip_FLEXCOMM_GetIndex(pSPI));

	/* Check if we have a valid rate */
	LPC_ASSERT(rate, __FILE__, __LINE__);

	/* Check if CLK is a sane value */
	LPC_ASSERT(clk, __FILE__, __LINE__);

	/* Compute divider */
	div = clk / rate;

	/* Limit values */
	if (div == 0) {
		div = 1;
	}
	else if (div > 0x10000) {
		div = 0x10000;
	}
	pSPI->DIV = div - 1;

	return Chip_SPIM_GetClockRate(pSPI);
}

/* Configure SPI Delay parameters */
void Chip_SPIM_DelayConfig(LPC_SPI_T *pSPI, SPIM_DELAY_CONFIG_T *pConfig)
{
	pSPI->DLY = (SPI_DLY_PRE_DELAY(pConfig->PreDelay) |
				 SPI_DLY_POST_DELAY(pConfig->PostDelay) |
				 SPI_DLY_FRAME_DELAY(pConfig->FrameDelay) |
				 SPI_DLY_TRANSFER_DELAY(pConfig->TransferDelay - 1));
}

/* SPI master transfer interrupt handler */
void Chip_SPIM_XferHandler(LPC_SPI_T *pSPI, SPIM_XFER_T *xfer)
{
	uint32_t val;

	/* Check if the bus is stalled for any reason! */
	if (Chip_SPI_GetStatus(pSPI) & SPI_STAT_STALLED) {
		xfer->state = SPI_XFER_STATE_STALL;
	}

	/* Check if there is a problem in TX or RX */
	val = Chip_SPI_GetFIFOStatus(pSPI);
	if ((val & SPI_FIFOSTAT_TXERR) && xfer->eventCB) {
		xfer->eventCB(pSPI, SPIM_EVENT_ERRORTX, xfer);
		xfer->state = SPI_XFER_STATE_ERROR;
		Chip_SPI_ClearFIFOStatus(pSPI, SPI_FIFOSTAT_TXERR);
	}
	if ((val & SPI_FIFOSTAT_RXERR) && xfer->eventCB) {
		xfer->eventCB(pSPI, SPIM_EVENT_ERRORRX, xfer);
		xfer->state = SPI_XFER_STATE_ERROR;
		Chip_SPI_ClearFIFOStatus(pSPI, SPI_FIFOSTAT_RXERR);
	}
	if (xfer->state != SPI_XFER_STATE_BUSY) {
		if (xfer->eventCB) {
			xfer->eventCB(pSPI, SPIM_EVENT_ERROR, xfer);
		}
		Chip_SPI_DisableFIFOInts(pSPI, SPI_FIFOINT_TXLVL | SPI_FIFOINT_RXLVL);
		return;
	}

	/* Simultaneous transmit / receive loop */
	while ((val = Chip_SPI_GetFIFOStatus(pSPI)) & (SPI_FIFOSTAT_TXNOTFULL | SPI_FIFOSTAT_RXNOTEMPTY)) {
		if ((xfer->txIndex >= xfer->txCount) && (xfer->rxIndex >= xfer->rxCount)) {
			xfer->state = SPI_XFER_STATE_DONE;
			Chip_SPI_DisableFIFOInts(pSPI, SPI_FIFOINT_TXLVL | SPI_FIFOINT_RXLVL);
			if (xfer->eventCB) {
				xfer->eventCB(pSPI, SPIM_EVENT_DONE, xfer);
			}
			Chip_SPI_DisableFIFOInts(pSPI, SPI_FIFOINT_TXLVL | SPI_FIFOINT_RXLVL);
			Chip_SPI_DisableFIFOInts(pSPI, SPI_FIFOINT_TXERR | SPI_FIFOINT_RXERR);
			break;
		}
		spim_do_txrx(pSPI, val, xfer);
	}

	Chip_SPI_ClearStatus(pSPI, SPI_STAT_SSD | SPI_STAT_SSA | SPI_STAT_MSTIDLE);
}

/* Start non-blocking SPI master transfer */
void Chip_SPIM_Xfer(LPC_SPI_T *pSPI, SPIM_XFER_T *xfer)
{
	xfer->txIndex = xfer->rxIndex = 0;
	xfer->state = SPI_XFER_STATE_BUSY;

	/* Clear, then enable error interrupts */
	Chip_SPI_ClearFIFOStatus(pSPI, (SPI_FIFOSTAT_TXERR | SPI_FIFOSTAT_RXERR));
	Chip_SPI_EnableFIFOInts(pSPI, SPI_FIFOINT_TXERR | SPI_FIFOINT_RXERR);

	/* Setup for DMA, otherwise start the SPI transfer */
	if (xfer->option & SPIM_XFER_OPT_DMA) {
		Chip_SPI_SetFIFOCfg(pSPI, SPI_FIFOCFG_DMATX | SPI_FIFOCFG_DMARX | SPI_FIFOCFG_WAKETX | SPI_FIFOCFG_WAKERX);
		Chip_SPI_DisableFIFOInts(pSPI, SPI_FIFOINT_TXLVL | SPI_FIFOINT_RXLVL);
	} else {
		Chip_SPI_ClearFIFOCfg(pSPI, SPI_FIFOCFG_DMATX | SPI_FIFOCFG_DMARX);
		Chip_SPI_EnableFIFOInts(pSPI, SPI_FIFOINT_TXLVL | SPI_FIFOINT_RXLVL);
	}

	if (xfer->eventCB) {
		xfer->eventCB(pSPI, SPIM_EVENT_WAIT, xfer);
	}

	if (xfer->option & SPIM_XFER_OPT_DMA) {
		Chip_SPIM_ForceEndOfTransfer(pSPI);
		if (xfer->state == SPI_XFER_STATE_BUSY) {
			xfer->state = SPI_XFER_STATE_DONE;
		}
	}
}

/* Start FIFO based polled SPI master tx / rx */
void Chip_SPIM_XferFIFO(LPC_SPI_T *pSPI, SPIM_XFER_T *xfer)
{
	uint16_t tx_data, tx_ctrl;
	uint32_t rx_data;

	xfer->txIndex = xfer->rxIndex = 0;
	if (xfer->txCount > 8) xfer->txCount = 8;
	xfer->rxCount = xfer->txCount;
	
	xfer->state = SPI_XFER_STATE_BUSY;

	/* Clear FIFO status, then flush the FIFOs */
	Chip_SPI_ClearFIFOStatus(pSPI, (SPI_FIFOSTAT_TXERR | SPI_FIFOSTAT_RXERR));
	Chip_SPI_FlushFIFOs(pSPI);

	/* Write SPI data*/
	while (xfer->txIndex < xfer->txCount) {
		tx_data = get_tx_data(xfer);
		tx_ctrl = spim_get_xfercfg(xfer) | ((xfer->txIndex == xfer->txCount) ? SPI_TXDAT_EOT : 0);
		Chip_SPI_WriteFIFOcd(pSPI, tx_ctrl, tx_data);
	}

	/* wait for SPI RX to complete */
	while (SPI_FIFOSTAT_RXLVL(Chip_SPI_GetFIFOStatus(pSPI)) < xfer->rxCount);

	/* Read SPI data*/
	while (xfer->rxIndex < xfer->rxCount) {
		rx_data = Chip_SPI_ReadFIFOdata(pSPI);
		put_rx_data(xfer, rx_data);
	}

	xfer->state = SPI_XFER_STATE_DONE;
}

/* Perform blocking SPI master transfer */
void Chip_SPIM_XferBlocking(LPC_SPI_T *pSPI, SPIM_XFER_T *xfer)
{
	/* Start trasnfer */
	Chip_SPIM_Xfer(pSPI, xfer);

	/* Wait for termination */
	while (xfer->state == SPI_XFER_STATE_BUSY) {
		Chip_SPIM_XferHandler(pSPI, xfer);
	}
}
