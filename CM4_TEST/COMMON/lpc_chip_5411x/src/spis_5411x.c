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

/* Get data from the xfer transmit buffer */
static uint16_t get_tx_data(SPIS_XFER_T *xfer)
{
	uint16_t data = 0xffff;														/* declare / preload data */

	if ((xfer->txData == NULL) || (xfer->txCount == 0)) {						/* if there's no tx buffer, or tx count is zero... */
		return data;															/* return data */
	}
	
	if (xfer->txIndex < xfer->txCount) {										/* If there is data in the buffer... */
		if (xfer->dataWidth > 8) {												/* If the buffer width is larger than 8... */
			data = ((uint16_t *) xfer->txData)[xfer->txIndex];					/* get 16-bit data */
		} else {			                                                
			data = ((uint8_t *) xfer->txData)[xfer->txIndex];					/* get 8-bit data */
		}			                                                        
		xfer->txIndex+=1;														/* bump buffer index */
	}			                                                            

	return data;																/* return data */
}

/* Post data to the xfer receive buffer */
static void put_rx_data(SPIS_XFER_T *xfer, uint16_t data)
{
	if ((xfer->rxData == NULL) || (xfer->rxCount == 0)) {						/* if there's no rx buffer, or rx count is zero... */
		return;																	/* exit */
	}

	if (xfer->rxIndex < xfer->rxCount) {										/* if there is still space in the buffer... */
		if (xfer->dataWidth > 8) {												/* if buffer width is larger than 8... */
			((uint16_t *) xfer->rxData)[xfer->rxIndex] = data;					/* save 16-bit data */
		} else {
			((uint8_t *) xfer->rxData)[xfer->rxIndex] = (uint8_t) data;			/* save 8-bit data */
		}
		xfer->rxIndex+=1;														/* bump buffer index */
	}
}

/* Execute simultaneous transmit / receive */
static void spis_do_txrx(LPC_SPI_T *pSPI, uint32_t stat, SPIS_XFER_T *xfer)
{
	uint16_t tx_data;
	uint32_t rx_data;
	uint16_t tx_ctrl = SPI_TXDAT_FLEN(xfer->dataWidth-1);						/* declare and calculate data size */

	if (stat & SPI_FIFOSTAT_RXNOTEMPTY) {										/* if the RX FIFO is not empty... */
		rx_data = Chip_SPI_ReadFIFO(pSPI);										/* read FIFO data */
		if (rx_data & SPI_RXDAT_SOT) {											/* if SOT is set */
			xfer->sselNum = SPI_RXDAT_RXSSELN(rx_data);							/* calculate chip select */
			xfer->ss_count += 1;												/* bump event counter */
		}
		put_rx_data(xfer, rx_data);												/* store data in the xfer buffer */
	}

	if (stat & SPI_FIFOSTAT_TXNOTFULL) {										/* if the TX FIFO is not full... */
		tx_data = get_tx_data(xfer);											/* get data from xfer buffer */
		Chip_SPI_WriteFIFOcd(pSPI, tx_ctrl, tx_data);							/* post data to FIFO */
	}
}

/*****************************************************************************
 * Public functions
 ****************************************************************************/

void Chip_SPIS_Init(LPC_SPI_T *pSPI)
{
	Chip_SPI_FlushFIFOs(pSPI);													/* Flush the FIFO's */

	Chip_SPI_ClearStatus(pSPI, (SPI_STAT_SSA | SPI_STAT_SSD));					/* Clear peripheral interrupts */
	Chip_SPI_DisableInts(pSPI, (SPI_INT_SSAEN | SPI_INT_SSDEN));				/* Disable peripheral interrupts */

	Chip_SPI_ClearFIFOStatus(pSPI, (SPI_FIFOSTAT_TXERR | SPI_FIFOSTAT_RXERR));	/* Clear FIFO errors */
	Chip_SPI_DisableFIFOInts(pSPI, (SPI_FIFOINT_RXERR | SPI_FIFOINT_TXERR));	/* Disable FIFO error interrupts */
	Chip_SPI_DisableFIFOInts(pSPI, (SPI_FIFOINT_RXLVL | SPI_FIFOINT_TXLVL));	/* Disable FIFO rx/tx interrupts */
}

void Chip_SPIS_EnableInts(LPC_SPI_T *pSPI)
{
	Chip_SPI_ClearStatus(pSPI, (SPI_STAT_SSA | SPI_STAT_SSD));					/* Clear peripheral interrupts */
	Chip_SPI_EnableInts(pSPI, (SPI_INT_SSAEN | SPI_INT_SSDEN));					/* Enable peripheral interrupts */

	Chip_SPI_ClearFIFOStatus(pSPI, (SPI_FIFOSTAT_TXERR | SPI_FIFOSTAT_RXERR));	/* Clear FIFO errors */
	Chip_SPI_EnableFIFOInts(pSPI,  (SPI_FIFOINT_RXERR | SPI_FIFOINT_TXERR));	/* Enable FIFO error interrupts */
	Chip_SPI_EnableFIFOInts(pSPI,  (SPI_FIFOINT_RXLVL | SPI_FIFOINT_TXLVL));	/* Enable FIFO rx/tx interrupts */
}

void Chip_SPIS_DisableInts(LPC_SPI_T *pSPI)
{
	Chip_SPI_ClearStatus(pSPI, (SPI_STAT_SSA | SPI_STAT_SSD));					/* Clear peripheral interrupts */
	Chip_SPI_DisableInts(pSPI, (SPI_INT_SSAEN | SPI_INT_SSDEN));				/* Disable peripheral interrupts */

	Chip_SPI_ClearFIFOStatus(pSPI, (SPI_FIFOSTAT_TXERR | SPI_FIFOSTAT_RXERR));	/* Clear FIFO errors */
	Chip_SPI_DisableFIFOInts(pSPI, (SPI_FIFOINT_RXERR | SPI_FIFOINT_TXERR));	/* Disable FIFO error interrupts */
	Chip_SPI_DisableFIFOInts(pSPI, (SPI_FIFOINT_RXLVL | SPI_FIFOINT_TXLVL));	/* Disable FIFO rx/tx interrupts */
}

void Chip_SPIS_LoadFIFO(LPC_SPI_T *pSPI, SPIS_XFER_T *xfer)
{
	uint32_t i,ct,fifo_stat;
	uint16_t data, fifo_opn;
	uint16_t ctrl = SPI_TXDAT_FLEN(xfer->dataWidth-1);

	fifo_stat = Chip_SPI_GetFIFOStatus(pSPI);									/* acquire FIFO status */

	if ((fifo_stat & SPI_FIFOSTAT_TXNOTFULL) == 0)								/* if FIFO is full... */
		return;																	/* ...exit */
	
	fifo_opn = SPI_FIFO_DEPTH-SPI_FIFOSTAT_TXLVL(fifo_stat);					/* determine how many entries are open in the FIFO */
	ct = (xfer->txCount < 8) ? xfer->txCount : SPI_FIFO_DEPTH;					/* limit count to max FIFO depth */
	ct = (xfer->txCount < fifo_opn) ? xfer->txCount : fifo_opn;					/* limit count to FIFO level */
	
	for (i=0; i<ct; i++) {														/* loop through the data */
		data = get_tx_data(xfer);												/* get from xfer buffer */
		Chip_SPI_WriteFIFOcd(pSPI, ctrl, data);									/* write control and data */
	}
}

void Chip_SPIS_ReadFIFO(LPC_SPI_T *pSPI, SPIS_XFER_T *xfer)
{
	uint16_t i,rx_count;
	uint32_t rx_data;

	rx_count = SPI_FIFOSTAT_RXLVL(Chip_SPI_GetFIFOStatus(pSPI));				/* determine how much data is available in the FIFO */

	for (i=0; i<rx_count; i++) {												/* loop through data */
		rx_data = Chip_SPI_ReadFIFO(pSPI);										/* get 32-bit data from FIFO */
		put_rx_data(xfer, rx_data);												/* post the data to the xfer buffer */
	}
}

/* SPI slave interrupt handler */
void Chip_SPIS_XferHandler(LPC_SPI_T *pSPI, SPIS_XFER_T *xfer)
{
	uint32_t fifo_pend=0, spi_pend=0, fifo_stat=0;

	fifo_pend = Chip_SPI_GetFIFOPendingInts(pSPI);

	if (fifo_pend & SPI_FIFOINT_PERINT) {
		spi_pend = Chip_SPI_GetPendingInts(pSPI);								/* get peripheral interrupt */
		if (spi_pend & SPI_INT_SSAEN) {											/* test for SS assert */
			Chip_SPI_ClearStatus(pSPI, SPI_STAT_SSA);							/* clear assert status */
			xfer->ss_state = true;												/* set ss state */
			if (xfer->eventCB)													/* if there's a call-back... */
				xfer->eventCB(pSPI, SPIS_EVENT_SASSERT, xfer);					/* call it */
			Chip_SPI_EnableFIFOInts(pSPI, SPI_FIFOINT_TXLVL);					/* enable transmitter */
		}
	}
	
	if (fifo_stat & SPI_FIFOSTAT_TXERR) {										/* if there's a tx error */
		if (xfer->eventCB)														/* is there a call back? */
			xfer->eventCB(pSPI, SPIS_EVENT_ERRORTX, xfer);						/* if so, call it */
		Chip_SPI_ClearFIFOStatus(pSPI, SPI_FIFOSTAT_TXERR);						/* clear the error */
	}

	if (fifo_stat & SPI_FIFOSTAT_RXERR) {										/* if there's an rx error */
		if (xfer->eventCB)                                                      /* is there a call back? */
			xfer->eventCB(pSPI, SPIS_EVENT_ERRORRX, xfer);                      /* if so, call it */
		Chip_SPI_ClearFIFOStatus(pSPI, SPI_FIFOSTAT_RXERR);                     /* clear the error */
	}

	while ((fifo_stat = Chip_SPI_GetFIFOStatus(pSPI)) & (SPI_FIFOSTAT_TXNOTFULL | SPI_FIFOSTAT_RXNOTEMPTY)) {
		spis_do_txrx(pSPI, fifo_stat, xfer);
	}

	if (xfer->thresCount && xfer->rxIndex == xfer->thresCount && xfer->eventCB)
		xfer->eventCB(pSPI, SPIS_EVENT_THRESHOLD, xfer);

	if (fifo_pend & SPI_FIFOINT_PERINT) {
		spi_pend = Chip_SPI_GetPendingInts(pSPI);								/* get peripheral interrupt */
		if (spi_pend == SPI_INT_SSDEN) {										/* test for SS de-assert */
			Chip_SPI_ClearStatus(pSPI, SPI_STAT_SSD);							/* clear de-assert status */
			xfer->ss_state = false;												/* set ss state */
			if (xfer->eventCB)													/* if there's a call-back... */
				xfer->eventCB(pSPI, SPIS_EVENT_SDEASSERT, xfer);				/* call it */
			Chip_SPI_DisableFIFOInts(pSPI, SPI_FIFOINT_TXLVL);					/* disable transmitter */
			Chip_SPI_FlushFIFOs(pSPI);											/* flush SPI FIFO's */
		}
	}
}
