/*
 * @brief DMA driver declarations and functions
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

DMA_CALLBACK_T dma_pCallback_array[MAX_DMA_CHANNEL];  // callback array
DMA_CALLBACK_T dma_service_error_cb;

void Chip_DMASERVICE_Init(DMA_CHDESC_T * base)
{
	int32_t i;
	dma_service_error_cb = NULL;
	for (i = 0; i< MAX_DMA_CHANNEL; i++) {
		dma_pCallback_array[i] = NULL;
	}
	Chip_DMA_Init(LPC_DMA);
	Chip_DMA_SetSRAMBase(LPC_DMA, (uint32_t)base);
	Chip_DMA_Enable(LPC_DMA);
}


void Chip_DMASERVICE_ErrorHandler(void)
{
	if (LPC_DMA->DMACOMMON[0].ERRINT != 0) {
		if (dma_service_error_cb != NULL) {										//	If handler exists...
			dma_service_error_cb(0);											//	...execute
		} else {																//	if not...
			LPC_DMA->DMACOMMON[0].ERRINT = LPC_DMA->DMACOMMON[0].ERRINT;		//	...clear errors
		}
	}
};


void Chip_DMASERVICE_Isr(void)
{
	int32_t i;
	uint32_t tempInta = 1;
	uint32_t tempIntb = 1;

	Chip_DMASERVICE_ErrorHandler();												// Handle errors

	for (i=0; i<32 && ((tempInta|tempIntb) != 0); i++) {						//	run through DMA channels, exit when all interrupts are serviced
		tempInta = LPC_DMA->DMACOMMON[0].INTA;									//	get interrupt A status
		if (tempInta & (1<<i)) {												//	if an interrupt is active
			if (dma_pCallback_array[i] != NULL) {								//	test for callback function
				LPC_DMA->DMACOMMON[0].INTA = 1<<i;								//	clear interrupt only if there is a callback
				dma_pCallback_array[i](0);										//	call it (if it exists)
			}
		}
		tempIntb = LPC_DMA->DMACOMMON[0].INTB;									//	get interrupt B status
		if (tempIntb & (1<<i)) {												//	if interrupt is active
			if (dma_pCallback_array[i] != NULL) {								//	test for callback
				LPC_DMA->DMACOMMON[0].INTB = 1<<i;								//	clear interrupt only if there is a callback
				dma_pCallback_array[i](1);										//	call it (if it exists)
			}
		}
	}
}


void Chip_DMASERVICE_RegisterCb(const DMA_PERIPHERAL_CONTEXT_T* pContext, DMA_CALLBACK_T pCallback)
{
	dma_pCallback_array[pContext->channel] = pCallback;
}


#define	DMA_XFERCFG_WIDTH 		8
#define	DMA_XFERCFG_SRCINC		12
#define	DMA_XFERCFG_DSTINC		14

void Chip_DMASERVICE_SingleBuffer(const DMA_PERIPHERAL_CONTEXT_T * pContext, uint32_t  pMem, uint32_t length)
{
	uint32_t cfg_val;
	DMA_CHDESC_T * pTable;
	uint32_t  source;
	uint32_t  destination;
	uint32_t  xfercount;
	uint32_t  width, dst_inc, src_inc;

	width   = pContext->width >> DMA_XFERCFG_WIDTH;
	dst_inc = pContext->dst_increment >> DMA_XFERCFG_DSTINC;
	src_inc = pContext->src_increment >> DMA_XFERCFG_SRCINC;

	if (pContext->write) {														//	write to register
		xfercount	= (length>>1) >> (width<<(src_inc-1));						//	calculate transfer count
		source		= pMem + length - (1<<(width<<(src_inc-1)));				//	source is RAM
		destination	= (uint32_t)pContext->register_location;					//	destination is register
	} else {																	//	read from register
		xfercount	= (length>>1) >> (width<<(dst_inc-1));						//	calcualate transfer count
		source		= (uint32_t)pContext->register_location;					//	source is register
		destination	= pMem + length - (1<<(width<<(dst_inc-1)));				//	destination is RAM
	}

	pTable	= (DMA_CHDESC_T *) LPC_DMA->SRAMBASE; 								// get DMA table base

	cfg_val  = (pContext->width) | (pContext->src_increment) | (pContext->dst_increment);
	cfg_val |= (DMA_XFERCFG_CFGVALID | DMA_XFERCFG_SWTRIG | DMA_XFERCFG_XFERCOUNT(xfercount));

	pTable[pContext->channel].dest     			= destination;
	pTable[pContext->channel].source   			= source;
	pTable[pContext->channel].next     			= (uint32_t)NULL;
	LPC_DMA->DMACH[pContext->channel].CFG		= DMA_CFG_PERIPHREQEN;
	LPC_DMA->DMACH[pContext->channel].XFERCFG	= cfg_val | DMA_XFERCFG_SETINTA;
}


void Chip_DMASERVICE_DoubleBuffer(const DMA_PERIPHERAL_CONTEXT_T * pContext, uint32_t  pMem, uint32_t length, DMA_DUAL_DESCRIPTOR_T * pD)
{
	uint32_t cfg_val;
	DMA_CHDESC_T * pTable;
	uint32_t  source[2];
	uint32_t  destination[2];
	uint32_t  xfercount;
	uint32_t  width, dst_inc, src_inc;

	width   = pContext->width >> DMA_XFERCFG_WIDTH;
	dst_inc = pContext->dst_increment >> DMA_XFERCFG_DSTINC;
	src_inc = pContext->src_increment >> DMA_XFERCFG_SRCINC;

	if (pContext->write) {														//	write to register
		xfercount		= (length>>1) >> (width<<(src_inc-1));					//	calculate transfer count
		source[0]		= pMem;													//	source is RAM
		destination[0]	= (uint32_t)pContext->register_location;				//	destination is register
		source[1]		= pMem + (length>>1);									//	source is RAM
		destination[1]	= (uint32_t)pContext->register_location;				//	destination is register
	} else {																	//	read from register
		xfercount		= (length>>1) >> (width<<(dst_inc-1));					//	calcualate transfer count
		source[0]		= (uint32_t)pContext->register_location;				//	source is register
		destination[0]	= (pMem + (length>>1) - (1<<(width<<(dst_inc-1))));		//	destination is RAM
		source[1]		= (uint32_t)pContext->register_location;				//	source is register
		destination[1]	= (pMem + (length>>0) - (1<<(width<<(dst_inc-1))));		//	destination is RAM
	}

	pTable	= (DMA_CHDESC_T *) LPC_DMA->SRAMBASE;								// get DMA table base

	cfg_val  = DMA_XFERCFG_RELOAD   | (pContext->width)| (pContext->src_increment) | (pContext->dst_increment);
	cfg_val |= DMA_XFERCFG_CFGVALID | DMA_XFERCFG_SWTRIG | DMA_XFERCFG_XFERCOUNT(xfercount);

	pD->descr[0].xfercfg	= cfg_val | DMA_XFERCFG_SETINTB;					//	use interrupt B
	pD->descr[0].source		= (uint32_t) source[1];								//	set soource
	pD->descr[0].dest		= (uint32_t) destination[1];						//	set destination
	pD->descr[0].next		= (uint32_t) &pD->descr[1];							//	jump to descriptor[1]

	pD->descr[1].xfercfg	= cfg_val | DMA_XFERCFG_SETINTA;					//	use interrupt A
	pD->descr[1].source		= (uint32_t) source[0];								//	set source
	pD->descr[1].dest		= (uint32_t) destination[0];						//	set destination
	pD->descr[1].next		= (uint32_t) &pD->descr[0];							//	jump to descriptor[0]

	pTable[pContext->channel].dest				= destination[0];				//	point DMA engine at descriptor[0]
	pTable[pContext->channel].source			= source[0];					//	set source
	pTable[pContext->channel].next				= (uint32_t) pD;				//	set next
	LPC_DMA->DMACH[pContext->channel].CFG		= DMA_CFG_PERIPHREQEN;			//	set configuration
	LPC_DMA->DMACH[pContext->channel].XFERCFG	= cfg_val | DMA_XFERCFG_SETINTA;
}
