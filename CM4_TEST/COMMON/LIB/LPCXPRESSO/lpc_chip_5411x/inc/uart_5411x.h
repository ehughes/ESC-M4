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

#ifndef __UART_5411X_H_
#define __UART_5411X_H_

#ifdef __cplusplus
extern "C" {
#endif

#include "ring_buffer.h"

/** @defgroup UART_5411X CHIP: LPC5411X UART Driver
 * @ingroup CHIP_5411X_DRIVERS
 * @{
 */

/*******************
 * EXPORTED MACROS  *
 ********************/
#define     ECHO_EN             1
#define     ECHO_DIS            0

/**	@brief	UART Registers */
typedef struct {                   /* UART registers Structure          */
	__IO uint32_t CFG;             /*!< Offset: 0x000 Configuration register  */
	__IO uint32_t CTL;             /*!< Offset: 0x004 Control register */
	__IO uint32_t STAT;            /*!< Offset: 0x008 Status register */
	__IO uint32_t INTENSET;        /*!< Offset: 0x00C Interrupt Enable Read and Set register */
	__O  uint32_t INTENCLR;        /*!< Offset: 0x010 Interrupt Enable Clear register @cond */
	__I  uint32_t RESERVED0A[3];   /*!< Offset: 0x014 Reserved register @endcond */
	__IO uint32_t BRG;             /*!< Offset: 0x020 Baud Rate Generator register */
	__I  uint32_t INTSTAT;         /*!< Offset: 0x024 Interrupt Status register */
	__IO uint32_t OSR;             /*!< Offset: 0x028 Oversampling register */
	__IO uint32_t ADDR;            /*!< Offset: 0x02C Address register (for automatic address matching) @cond */
	__I  uint32_t RESERVED0[884];  /*!< Offset: 0x030 Reserved member */

	/** UART FIFO Specific registers @endcond */
	__IO uint32_t FIFOCFG;         /*!< Offset: 0xE00 FIFO Configuration register */
	__IO uint32_t FIFOSTAT;        /*!< Offset: 0xE04 FIFO Status register */
	__IO uint32_t FIFOTRIG;        /*!< Offset: 0xE08 FIFO Trigger level register @cond */
	__I  uint32_t RESERVED1;       /*!< Offset: 0xE0C Reserved register @endcond */
	__IO uint32_t FIFOINTENSET;    /*!< Offset: 0xE10 FIFO Interrupt enable SET register */
	__IO uint32_t FIFOINTENCLR;    /*!< Offset: 0xE14 FIFO Interrupt enable CLEAR register */
	__IO uint32_t FIFOINTSTAT;     /*!< Offset: 0xE18 FIFO Interrupt Status register @cond */
	__I  uint32_t RESERVED2;       /*!< Offset: 0xE1C Reserved register @endcond */
	__O  uint32_t FIFOWR;          /*!< Offset: 0xE20 FIFO Data write register @cond */
	__I  uint32_t RESERVED3[3];    /*!< Offset: 0xE24 Reserved register @endcond */
	__I  uint32_t FIFORD;          /*!< Offset: 0xE30 FIFO Data read register @cond */
	__I  uint32_t RESERVED4[3];    /*!< Offset: 0xE24 Reserved register @endcond */
	__I  uint32_t FIFORDNOPOP;     /*!< Offset: 0xE40 FIFO Data peek (read without popping out of queue) register @cond */
	__I  uint32_t RESERVED5[109];  /*!< Offset: 0xE44 Reserved register */

	/** FLEXCOMM Interface registers @endcond */
	__IO uint32_t PSELID;          /*!< Offset: 0xFF8 Peripheral select/identification register */
	__I  uint32_t PID;             /*!< Offset: 0xFFC Module identification register */
} LPC_USART_T;

/**
 * @brief UART CFG register definitions
 */
#define UART_CFG_BITMASK      				(0x00fddbfd)
#define UART_CFG_ENABLE        				(0x01 << 0)
#define UART_CFG_DATALEN_7     				(0x00 << 2)							/*!< UART 7 bit length mode */
#define UART_CFG_DATALEN_8     				(0x01 << 2)							/*!< UART 8 bit length mode */
#define UART_CFG_DATALEN_9     				(0x02 << 2)							/*!< UART 9 bit length mode */
#define UART_CFG_PARITY_NONE   				(0x00 << 4)							/*!< No parity */
#define UART_CFG_PARITY_EVEN   				(0x02 << 4)							/*!< Even parity */
#define UART_CFG_PARITY_ODD    				(0x03 << 4)							/*!< Odd parity */
#define UART_CFG_STOPLEN_1     				(0x00 << 6)							/*!< UART One Stop Bit Select */
#define UART_CFG_STOPLEN_2     				(0x01 << 6)							/*!< UART Two Stop Bits Select */
#define UART_CFG_MODE32K       				(0x01 << 7)							/*!< UART 32K MODE */
#define UART_CFG_LINMODE       				(0x01 << 8)							/*!< UART LIN MODE */
#define UART_CFG_CTSEN         				(0x01 << 9)							/*!< CTS enable bit */
#define UART_CFG_SYNCEN        				(0x01 << 11)						/*!< Synchronous mode enable bit */
#define UART_CFG_CLKPOL        				(0x01 << 12)						/*!< Un_RXD rising edge sample enable bit */
#define UART_CFG_SYNCMST       				(0x01 << 14)						/*!< Select master mode (synchronous mode) enable bit */
#define UART_CFG_LOOP          				(0x01 << 15)						/*!< Loopback mode enable bit */
#define UART_CFG_IOMODE        				(0x01 << 16)						/*!< enable bit standard UART / IrDA UART */
#define UART_CFG_OETA          				(0x01 << 18)						/*!< Output Enable Turnaround time enable for RS-485 operation */
#define UART_CFG_AUTOADDR      				(0x01 << 19)						/*!< Automatic Address matching enable */
#define UART_CFG_OESEL         				(0x01 << 20)						/*!< Output Enable Select */
#define UART_CFG_OEPOL         				(0x01 << 21)						/*!< Output Enable Polarity */
#define UART_CFG_RXPOL         				(0x01 << 22)						/*!< Receive data polarity */
#define UART_CFG_TXPOL         				(0x01 << 23)						/*!< Transmit data polarity */


/**
 * @brief UART CTRL register definitions
 */
#define UART_CTRL_TXBRKEN       			(0x01 << 1)							/*!< Continuous break enable bit */
#define UART_CTRL_ADDRDET       			(0x01 << 2)							/*!< Address detect mode enable bit */
#define UART_CTRL_TXDIS         			(0x01 << 6)							/*!< Transmit disable bit */
#define UART_CTRL_CC            			(0x01 << 8)							/*!< Continuous Clock mode enable bit */
#define UART_CTRL_CLRCCONRX     			(0x01 << 9)							/*!< Clear Continuous Clock bit */
#define UART_CTRL_AUTOBAUD      			(0x01 << 16)						/*!< Auto baud bit */

/**
 * @brief UART STAT register definitions
 */
#define UART_STAT_RXIDLE        			(0x01 << 1)							/*!< Receiver idle */
#define UART_STAT_TXIDLE        			(0x01 << 3)							/*!< Transmitter idle */
#define UART_STAT_CTS           			(0x01 << 4)							/*!< Status of CTS signal */
#define UART_STAT_DELTACTS      			(0x01 << 5)							/*!< Change in CTS state */
#define UART_STAT_TXDISINT      			(0x01 << 6)							/*!< Transmitter disabled */
#define UART_STAT_RXBRK         			(0x01 << 10)						/*!< Received break */
#define UART_STAT_DELTARXBRK    			(0x01 << 11)						/*!< Change in receive break detection */
#define UART_STAT_START         			(0x01 << 12)						/*!< Start detected */
#define UART_STAT_FRM_ERRINT    			(0x01 << 13)						/*!< Framing Error interrupt flag */
#define UART_STAT_PAR_ERRINT    			(0x01 << 14)						/*!< Parity Error interrupt flag */
#define UART_STAT_RXNOISEINT    			(0x01 << 15)						/*!< Received Noise interrupt flag */
#define UART_STAT_ABERR         			(0x01 << 16)						/*!< Auto baud error flag */

/**
 * @brief UART INTENSET/INTENCLR/INTSTAT register definitions
 */
#define UART_INT_TXIDLE       				(0x01 << 3)							/*!< Transmit idle interrupt */
#define UART_INT_DELTACTS     				(0x01 << 5)							/*!< Change in CTS state interrupt */
#define UART_INT_TXDIS        				(0x01 << 6)							/*!< Transmitter disable interrupt */
#define UART_INT_DELTARXBRK   				(0x01 << 11)						/*!< Change in receiver break detection interrupt */
#define UART_INT_START        				(0x01 << 12)						/*!< Start detect interrupt */
#define UART_INT_FRAMERR      				(0x01 << 13)						/*!< Frame error interrupt */
#define UART_INT_PARITYERR    				(0x01 << 14)						/*!< Parity error interrupt */
#define UART_INT_RXNOISE      				(0x01 << 15)						/*!< Received noise interrupt */
#define UART_INT_ABERR      				(0x01 << 16)						/*!< Auto-baud error interrupt */

/**
 * @brief	UART FIFO Configuration register bits
 */
#define UART_FIFOCFG_BITMASK		 		(0x7F033)							/*!< Register mask bit @endcond */
#define UART_FIFOCFG_ENABLETX		 		(1 << 0)							/*!< Enable TX FIFO */
#define UART_FIFOCFG_ENABLERX		 		(1 << 1)							/*!< Enable RX FIFO */
#define UART_FIFOCFG_DMATX			 		(1 << 12)							/*!< Enable DMA TX */
#define UART_FIFOCFG_DMARX			 		(1 << 13)							/*!< Enable DMA RX */
#define UART_FIFOCFG_WAKETX			 		(1 << 14)							/*!< Enable wakeup triggered by TX */
#define UART_FIFOCFG_WAKERX			 		(1 << 15)							/*!< Enable wakeup triggered by RX */
#define UART_FIFOCFG_EMPTYTX		 		(1 << 16)							/*!< Empty the TX FIFO */
#define UART_FIFOCFG_EMPTYRX		 		(1 << 17)							/*!< Empty the RX FIFO */

/**
 * @brief	UART FIFO Status register defines
 */
#define UART_FIFO_DEPTH						(16)								/** UART-FIFO How many entries are in the FIFO */
#define UART_FIFOSTAT_BITMASK				(0x1F1FFB)							/** UART-FIFO STAT Register BitMask */
#define UART_FIFOSTAT_TXERR      			(1 << 0)              				/*!< UART TX Error */
#define UART_FIFOSTAT_RXERR      			(1 << 1)              				/*!< UART RX Error */
#define UART_FIFOSTAT_PERIPH     			(1 << 3)              				/*!< Peripheral interrupt */
#define UART_FIFOSTAT_TXEMPTY    			(1 << 4)              				/*!< TXFIFO Empty */
#define UART_FIFOSTAT_TXNOTFULL  			(1 << 5)              				/*!< TXFIFO Not Full */
#define UART_FIFOSTAT_RXNOTEMPTY 			(1 << 6)              				/*!< RXFIFO Not empty */
#define UART_FIFOSTAT_RXFULL     			(1 << 7)              				/*!< RX FIFO Full */
#define UART_FIFOSTAT_TXLVL(lvl)  			(((lvl) >> 8) & 0x1F)  				/*!< Get TX Level from status */
#define UART_FIFOSTAT_RXLVL(lvl)  			(((lvl) >> 16) & 0x1F) 				/*!< Get TX Level from status */

/**
 * @brief	UART FIFO trigger settings register defines
 */
#define UART_FIFOTRIG_BITMASK				(0x000f0f03)						/**  UART FIFO trigger settings Register BitMask */
#define UART_FIFOTRIG_TXLVLENA 				(1 << 0)              				/*!< TX level enable*/
#define UART_FIFOTRIG_RXLVLENA 				(1 << 1)              				/*!< RX level enable */
#define UART_FIFOTRIG_TXLVL(lvl) 			((lvl & 0x0f) << 8)  				/*!< Set TX Level trigger */
#define UART_FIFOTRIG_RXLVL(lvl)			((lvl & 0x0f) << 16) 				/*!< Set RX Level trigger */

/**
 * @brief 	UART FIFO Interrupt enable/disable/status [INTSET/INTCLR/INTSTAT and FIFOINTSET/FIFOINTCLR/FIFOINTSTAT registers]
 */
#define UART_FIFOINT_BITMASK				(0x001F)							/** FIFO interrupt Bit mask */
#define UART_FIFOINT_TXERR					(1 << 0)							/**	 TX error interrupt			[BIT-0 of FIFOINTENSET/FIFOINTENCLR/FIFOINTSTAT register] */
#define UART_FIFOINT_RXERR					(1 << 1)							/**	 RX error interrupt			[BIT-1 of FIFOINTENSET/FIFOINTENCLR/FIFOINTSTAT register] */
#define UART_FIFOINT_TXLVL					(1 << 2)							/**	 TX FIFO ready interrupt	[BIT-2 of FIFOINTENSET/FIFOINTENCLR/FIFOINTSTAT register] */
#define UART_FIFOINT_RXLVL					(1 << 3)							/**	 RX Data ready interrupt	[BIT-3 of FIFOINTENSET/FIFOINTENCLR/FIFOINTSTAT register] */
#define UART_FIFOINT_PERINT					(1 << 4)							/**	 UART peripheral interrupt	[BIT-4 of FIFOINTSTAT register] */

/**
 * @brief	UART Baud rate calculation structure
 * @note
 * Use oversampling (@a ovr) value other than 16, only if the difference
 * between the actual baud and desired baud has an unacceptable error percentage.
 * Smaller @a ovr values can cause the sampling position within the data-bit
 * less accurate an may potentially cause more noise errors or incorrect data
 * set ovr to < 10 only when there is no other higher values suitable.
 */
typedef struct {
	uint32_t		clk;					/*!< IN: Base clock to fractional divider; OUT: "Base clock rate for UART" */
	uint32_t		baud;					/*!< IN: Required baud rate; OUT: Actual baud rate */
	uint8_t			ovr;					/*!< IN: Number of desired over samples [0-auto detect or values 5 to 16]; OUT: Auto detected over samples [unchanged if IN is not 0] */
	uint8_t			mul;					/*!< IN: 0 - calculate MUL, 1 - do't calculate (@a clk) has UART base clock; OUT: MUL value to be set in FRG register */
	uint16_t		div;					/*!< OUT: Integer divider to divide the "Base clock rate for UART" */
} UART_BAUD_T;

/**
 * @brief	UART statistics structure
 * @note
 * Maintains current UART statistics.
 */
typedef struct {
	uint32_t		interrupts;				/*!< count: interrupts */
	uint32_t		lvl_tx;					/*!< count: transmit interrupts */
	uint32_t		lvl_rx;					/*!< count: receive interrupts */
	uint32_t		fifo_err_tx;			/*!< count: FIFO transmit errors */
	uint32_t		fifo_err_rx;			/*!< count: FIFO receive errors */
	uint32_t		uart_cts;				/*!< count: UART CTS */
	uint32_t		uart_break;				/*!< count: UART break */
	uint32_t		uart_start;				/*!< count: UART RX starts */
	uint32_t		uart_err_frame;			/*!< count: UART frame errors */
	uint32_t		uart_err_parity;		/*!< count: UART parity errors */
	uint32_t		uart_err_rx_noise;		/*!< count: UART receive noise errors */
	uint32_t		uart_err_auto_baud;		/*!< count: UART auto-baud errors */
} UART_STATISTICS_T;

/**
 * @brief	Enable the UART
 * @param	pUART		: Pointer to selected UARTx peripheral
 * @return	Nothing
 */
__STATIC_INLINE void Chip_UART_Enable(LPC_USART_T *pUART)
{
	pUART->CFG |= UART_CFG_ENABLE;
}

/**
 * @brief	Disable the UART
 * @param	pUART	: Pointer to selected UARTx peripheral
 * @return	Nothing
 */
__STATIC_INLINE void Chip_UART_Disable(LPC_USART_T *pUART)
{
	pUART->CFG &= ~UART_CFG_ENABLE;
}

/**
 * @brief	Enable transmission on UART TxD pin
 * @param	pUART	: Pointer to selected pUART peripheral
 * @return Nothing
 */
__STATIC_INLINE void Chip_UART_TXEnable(LPC_USART_T *pUART)
{
	pUART->CTL &= ~UART_CTRL_TXDIS;
}

/**
 * @brief	Disable transmission on UART TxD pin
 * @param	pUART	: Pointer to selected pUART peripheral
 * @return Nothing
 */
__STATIC_INLINE void Chip_UART_TXDisable(LPC_USART_T *pUART)
{
	pUART->CTL |= UART_CTRL_TXDIS;
}

/**
 * @brief	Set auto baud
 * @param	pUART	: Pointer to selected pUART peripheral
 * @return true if auto baud succeeds, false if fails
 */
__STATIC_INLINE uint32_t Chip_UART_AutoBaud(LPC_USART_T *pUART)
{
	while ( (pUART->STAT & UART_STAT_RXIDLE) != UART_STAT_RXIDLE ) {}
	pUART->CTL |= UART_CTRL_AUTOBAUD;
	while ( pUART->CTL & UART_CTRL_AUTOBAUD ) {
		if ( pUART->STAT & UART_STAT_ABERR ) {
			pUART->STAT = UART_STAT_ABERR;
			return false;
		}
	}
	return true;
}

/**
 * @brief	Transmit a single data byte through the UART peripheral
 * @param	pUART	: Pointer to selected UART peripheral
 * @param	data	: Byte to transmit
 * @return	Nothing
 * @note	This function attempts to place a byte into the UART transmit
 *			holding register regard regardless of UART state.
 */
__STATIC_INLINE void Chip_UART_SendByte(LPC_USART_T *pUART, uint8_t data)
{
	pUART->FIFOWR = (uint32_t)data;
}

/**
 * @brief	Read a single byte data from the UART peripheral
 * @param	pUART	: Pointer to selected UART peripheral
 * @return	A single byte of data read
 * @note	This function reads a byte from the UART receive FIFO or
 *			receive hold register regard regardless of UART state.
 */
__STATIC_INLINE uint32_t Chip_UART_ReadByte(LPC_USART_T *pUART)
{
	/* Strip off undefined reserved bits, keep 9 lower bits */
	return (uint32_t) (pUART->FIFORD & 0x000001FF);
}

/**
 * @brief	Enable UART interrupts
 * @param	pUART	: Pointer to selected UART peripheral
 * @param	intMask	: OR'ed Interrupts to enable
 * @return	Nothing
 * @note	Use an OR'ed value of UART_INTEN_* definitions with this function
 *			to enable specific UART interrupts.
 */
__STATIC_INLINE void Chip_UART_IntEnable(LPC_USART_T *pUART, uint32_t intMask)
{
	pUART->INTENSET = intMask;
}

/**
 * @brief	Disable UART interrupts
 * @param	pUART	: Pointer to selected UART peripheral
 * @param	intMask	: OR'ed Interrupts to disable
 * @return	Nothing
 * @note	Use an OR'ed value of UART_INTEN_* definitions with this function
 *			to disable specific UART interrupts.
 */
__STATIC_INLINE void Chip_UART_IntDisable(LPC_USART_T *pUART, uint32_t intMask)
{
	pUART->INTENCLR = intMask;
}

/**
 * @brief	Returns UART interrupts that are enabled
 * @param	pUART	: Pointer to selected UART peripheral
 * @return	Returns the enabled UART interrupts
 * @note	Use an OR'ed value of UART_INTEN_* definitions with this function
 *			to determine which interrupts are enabled. You can check
 *			for multiple enabled bits if needed.
 */
__STATIC_INLINE uint32_t Chip_UART_GetIntsEnabled(LPC_USART_T *pUART)
{
	return pUART->INTENSET;
}

/**
 * @brief	Get UART interrupt status
 * @param	pUART	: The base of UART peripheral on the chip
 * @return	The UART interrupt status register
 * @note	This register does not indicate UART pending interrupts.
 *			It indicates the enabled interrupts. To get pending interrupts,
 *			read the UART status register.
 */
__STATIC_INLINE uint32_t Chip_UART_GetIntStatus(LPC_USART_T *pUART)
{
	return pUART->INTSTAT;
}

/**
 * @brief	Configure data width, parity and stop bits
 * @param	pUART	: Pointer to selected pUART peripheral
 * @param	config	: UART configuration, OR'ed values of select UART_CFG_* defines
 * @return	Nothing
 * @note	Select OR'ed config options for the UART from the UART_CFG_PARITY_*,
 *			UART_CFG_STOPLEN_*, and UART_CFG_DATALEN_* definitions. For example,
 *			a configuration of 8 data bits, 1 stop bit, and even (enabled) parity would be
 *			(UART_CFG_DATALEN_8 | UART_CFG_STOPLEN_1 | UART_CFG_PARITY_EVEN). Will not
 *			alter other bits in the CFG register.
 */
__STATIC_INLINE void Chip_UART_ConfigData(LPC_USART_T *pUART, uint32_t config)
{
	pUART->CFG = (pUART->CFG & UART_CFG_BITMASK) | config;
}

/**
 * @brief	Get the UART status register
 * @param	pUART	: Pointer to selected UARTx peripheral
 * @return	UART status register
 * @note	Multiple statuses may be pending. Mask the return value
 *			with one or more UART_STAT_* definitions to determine
 *			statuses.
 */
__STATIC_INLINE uint32_t Chip_UART_GetStatus(LPC_USART_T *pUART)
{
	return pUART->STAT;
}

/**
 * @brief	Clear the UART status register
 * @param	pUART	: Pointer to selected UARTx peripheral
 * @param	stsMask	: OR'ed statuses to disable
 * @return	Nothing
 * @note	Multiple interrupts may be pending. Mask the return value
 *			with one or more UART_INTEN_* definitions to determine
 *			pending interrupts.
 */
__STATIC_INLINE void Chip_UART_ClearStatus(LPC_USART_T *pUART, uint32_t stsMask)
{
	pUART->STAT = stsMask;
}

/**
 * @brief	Get the current status of UART controller FIFO
 * @param	pUART	: The base of UART peripheral on the chip
 * @return	UART Status (Or-ed bit value of UART_FIFOSTAT_*)
 * @note	Mask the return value with a value of type UART_FIFOSTAT_* to determine
 * if that status is active.
 */
__STATIC_INLINE uint32_t Chip_UART_GetFIFOStatus(LPC_USART_T *pUART)
{
	return pUART->FIFOSTAT;
}

/**
 * @brief	Clear the FIFO status register
 * @param	pUART	: The base of the UART peripheral on the chip
 * @param	mask	: Mask of the status bits that needs to be cleared
 * @return	Nothing
 */
__STATIC_INLINE void Chip_UART_ClearFIFOStatus(LPC_USART_T *pUART, uint32_t mask)
{
	pUART->FIFOSTAT = mask;
}

/**
 * @brief	Setup the trigger level for UART FIFO
 * @param	pUART	: The base of the UART peripheral on chip
 * @param	tx_lvl	: TX Trigger level [Valid values 0 to 15]
 * @param	rx_lvl	: RX Trigger level [Valid values 0 to 15]
 * @return	Nothing
 * @note	When @a tx_lvl = 0; trigger will happen when TX FIFO is empty
 * if @a tx_lvl = 15; trigger will happen when TX FIFO has at least one free space<br>
 * When @a rx_lvl = 0; trigger will happen when RX FIFO has at least one byte in it,
 * if @a rx_lvl = 15; trigger will happen when RX FIFO is full and cannot receive anymore data
 */
__STATIC_INLINE void Chip_UART_SetFIFOTrigLevel(LPC_USART_T *pUART, uint8_t tx_lvl, uint8_t rx_lvl)
{
	pUART->FIFOTRIG = (UART_FIFOTRIG_TXLVLENA|UART_FIFOTRIG_RXLVLENA) | UART_FIFOTRIG_TXLVL(tx_lvl) | UART_FIFOTRIG_RXLVL(rx_lvl);
}

/**
 * @brief	Enable a UART FIFO interrupt
 * @param	pUART	: The base of UART peripheral on the chip
 * @param	intMask	: Or'ed value of UART_FIFOINT_* values to enable
 * @return	Nothing
 */
__STATIC_INLINE void Chip_UART_EnableFIFOInts(LPC_USART_T *pUART, uint32_t intMask)
{
	pUART->FIFOINTENSET = intMask & UART_FIFOINT_BITMASK;
}

/**
 * @brief	Disable a UART FIFO interrupt
 * @param	pUART	: The base of UART peripheral on the chip
 * @param	intMask	: Or'ed value of UART_FIFOINT_* values to disable (See #UART_FIFOINT_BITMASK)
 * @return	Nothing
 */
__STATIC_INLINE void Chip_UART_DisableFIFOInts(LPC_USART_T *pUART, uint32_t intMask)
{
	pUART->FIFOINTENCLR = intMask & UART_FIFOINT_BITMASK;
}

/**
 * @brief	Return enabled UART FIFO interrupts
 * @param	pUART	: The base of UART peripheral on the chip
 * @return	An Or'ed value of UART_FIFOINT_* values
 */
__STATIC_INLINE uint32_t Chip_UART_GetFIFOEnabledInts(LPC_USART_T *pUART)
{
	return pUART->FIFOINTENSET & UART_FIFOINT_BITMASK;
}

/**
 * @brief	Return pending UART FIFO interrupts
 * @param	pUART	: The base of UART peripheral on the chip
 * @return	An Or'ed value of UART_FIFOINT_* values
 */
__STATIC_INLINE uint32_t Chip_UART_GetFIFOPendingInts(LPC_USART_T *pUART)
{
	return pUART->FIFOINTSTAT & UART_FIFOINT_BITMASK;
}

/**
 * @brief	Set FIFO Configuration register
 * @param	pUART	: The base of UART peripheral on the chip
 * @param	cfg		: Configuration value mask (OR'ed UART_FIFOCFG_* values like #UART_FIFOCFG_ENABLETX)
 * @return	Nothing
 */
__STATIC_INLINE void Chip_UART_SetFIFOCfg(LPC_USART_T *pUART, uint32_t cfg)
{
	pUART->FIFOCFG = (pUART->FIFOCFG & UART_FIFOCFG_BITMASK) | cfg;
}

/**
 * @brief	Clear FIFO Configuration register
 * @param	pUART	: The base of UART peripheral on the chip
 * @param	cfg		: Configuration value mask (OR'ed UART_FIFOCFG_* values like #UART_FIFOCFG_ENABLETX)
 * @return	Nothing
 */
__STATIC_INLINE void Chip_UART_ClearFIFOCfg(LPC_USART_T *pUART, uint32_t cfg)
{
	pUART->FIFOCFG = pUART->FIFOCFG & (UART_FIFOCFG_BITMASK & ~cfg);
}

/**
 * @brief	Flush FIFOs
 * @param	pUART	: The base of UART peripheral on the chip
 * @return	Nothing
 */
__STATIC_INLINE void Chip_UART_FlushFIFOs(LPC_USART_T *pUART)
{
	Chip_UART_SetFIFOCfg(pUART, UART_FIFOCFG_EMPTYTX | UART_FIFOCFG_EMPTYRX);
}

/**
 * @brief	Initialize the UART peripheral
 * @param	pUART	: The base of UART peripheral on the chip
 * @return	0 - On success; #ERR_FLEXCOMM_FUNCNOTSUPPORTED or #ERR_FLEXCOMM_NOTFREE on failure
 */
int Chip_UART_Init(LPC_USART_T *pUART);

/**
 * @brief	Deinitialize the UART peripheral
 * @param	pUART	: The base of UART peripheral on the chip
 * @return	Nothing
 */
void Chip_UART_DeInit(LPC_USART_T *pUART);

/**
 * @brief	Configure UART for DMA
 * @param	pUART	: The base of UART peripheral on the chip
 * @return	Nothing
 */
void Chip_UART_ConfigDMA(LPC_USART_T *pUART);

/**
 * @brief	Transmit a byte array through the UART peripheral (non-blocking)
 * @param	pUART		: Pointer to selected UART peripheral
 * @param	data		: Pointer to bytes to transmit
 * @param	numBytes	: Number of bytes to transmit
 * @return	The actual number of bytes placed into the FIFO
 * @note	This function places data into the transmit FIFO until either
 *			all the data is in the FIFO or the FIFO is full. This function
 *			will not block in the FIFO is full. The actual number of bytes
 *			placed into the FIFO is returned. This function ignores errors.
 */
int Chip_UART_Send(LPC_USART_T *pUART, const void *data, int numBytes);

/**
 * @brief	Read data through the UART peripheral (non-blocking)
 * @param	pUART		: Pointer to selected UART peripheral
 * @param	data		: Pointer to bytes array to fill
 * @param	numBytes	: Size of the passed data array
 * @return	The actual number of bytes read
 * @note	This function reads data from the receive FIFO until either
 *			all the data has been read or the passed buffer is completely full.
 *			This function will not block. This function ignores errors.
 */
int Chip_UART_Read(LPC_USART_T *pUART, void *data, int numBytes);

/**
 * @brief	Set baud rate for UART
 * @param	pUART	: The base of UART peripheral on the chip
 * @param	baudrate: Baud rate to be set
 * @return	Actual baud rate set
 * @note	This function uses the FRG to generate the required
 * clock, the FRG is shared by all the UARTs, hence calling this
 * API for multiple UARTs can affect each other.
 */
uint32_t Chip_UART_SetBaud(LPC_USART_T *pUART, uint32_t baudrate);

/**
 * @brief	Transmit a byte array through the UART peripheral (blocking)
 * @param	pUART		: Pointer to selected UART peripheral
 * @param	data		: Pointer to data to transmit
 * @param	numBytes	: Number of bytes to transmit
 * @return	The number of bytes transmitted
 * @note	This function will send or place all bytes into the transmit
 *			FIFO. This function will block until the last bytes are in the FIFO.
 */
int Chip_UART_SendBlocking(LPC_USART_T *pUART, const void *data, int numBytes);

/**
 * @brief	Read data through the UART peripheral (blocking)
 * @param	pUART		: Pointer to selected UART peripheral
 * @param	data		: Pointer to data array to fill
 * @param	numBytes	: Size of the passed data array
 * @return	The size of the dat array
 * @note	This function reads data from the receive FIFO until the passed
 *			buffer is completely full. The function will block until full.
 *			This function ignores errors.
 */
int Chip_UART_ReadBlocking(LPC_USART_T *pUART, void *data, int numBytes);

/**
 * @brief	UART receive-only interrupt handler for ring buffers
 * @param	pUART	: Pointer to selected UART peripheral
 * @param	pRB		: Pointer to ring buffer structure to use
 * @return	Nothing
 * @note	If ring buffer support is desired for the receive side
 *			of data transfer, the UART interrupt should call this
 *			function for a receive based interrupt status.
 */
void Chip_UART_RXIntHandlerRB(LPC_USART_T *pUART, RINGBUFF_T *pRB);

/**
 * @brief	UART transmit-only interrupt handler for ring buffers
 * @param	pUART	: Pointer to selected UART peripheral
 * @param	pRB		: Pointer to ring buffer structure to use
 * @return	Nothing
 * @note	If ring buffer support is desired for the transmit side
 *			of data transfer, the UART interrupt should call this
 *			function for a transmit based interrupt status.
 */
void Chip_UART_TXIntHandlerRB(LPC_USART_T *pUART, RINGBUFF_T *pRB);

/**
 * @brief	Populate a transmit ring buffer and start UART transmit
 * @param	pUART	: Pointer to selected UART peripheral
 * @param	pRB		: Pointer to ring buffer structure to use
 * @param	data	: Pointer to buffer to move to ring buffer
 * @param	count	: Number of bytes to move
 * @return	The number of bytes placed into the ring buffer
 * @note	Will move the data into the TX ring buffer and start the
 *			transfer. If the number of bytes returned is less than the
 *			number of bytes to send, the ring buffer is considered full.
 */
uint32_t Chip_UART_SendRB(LPC_USART_T *pUART, RINGBUFF_T *pRB, const void *data, int count);

/**
 * @brief	Copy data from a receive ring buffer
 * @param	pUART	: Pointer to selected UART peripheral
 * @param	pRB		: Pointer to ring buffer structure to use
 * @param	data	: Pointer to buffer to fill from ring buffer
 * @param	bytes	: Size of the passed buffer in bytes
 * @return	The number of bytes placed into the ring buffer
 * @note	Will move the data from the RX ring buffer up to the
 *			the maximum passed buffer size. Returns 0 if there is
 *			no data in the ring buffer.
 */
int Chip_UART_ReadRB(LPC_USART_T *pUART, RINGBUFF_T *pRB, void *data, int bytes);

/**
 * @brief	UART receive/transmit interrupt handler for ring buffers
 * @param	pUART		: Pointer to selected UART peripheral
 * @param	statistics	: Pointer to statistics structure
 * @param	pRXRB		: Pointer to transmit ring buffer
 * @param	pTXRB		: Pointer to receive ring buffer
 * @return	Nothing
 * @note	This provides a basic implementation of the UART IRQ
 *			handler for support of a ring buffer implementation for
 *			transmit and receive.
 */
void Chip_UART_IRQHandlerRB(LPC_USART_T *pUART, UART_STATISTICS_T* statistics, RINGBUFF_T *pRXRB, RINGBUFF_T *pTXRB);

/**
 * @brief	UART receive/transmit interrupt handler for DMA
 * @param	pUART	    : Pointer to selected UART peripheral
 * @param	statistics	: Pointer to statistics structure
 * @return	Nothing
 * @note	This interrupt service routine provides a basic implementation of the UART interrupt handler for DMA
 */
void Chip_UART_IRQHandlerDMA(LPC_USART_T *pUART, UART_STATISTICS_T* statistics);

#ifndef __DOXYGEN__

/* USART0 Defines */
#define LPC_USART0_BASE   __APPEND3(LPC_FLEXCOMM,USART0_FLEXCOMM,_BASE)
#define LPC_USART0        ((LPC_USART_T *) LPC_USART0_BASE)
#define USART0_IRQHandler __APPEND3(FLEXCOMM,USART0_FLEXCOMM,_IRQHandler)
#define USART0_IRQn       __APPEND3(FLEXCOMM,USART0_FLEXCOMM,_IRQn)
#define DMAREQ_USART0_RX  __APPEND3(DMAREQ_FLEXCOMM,USART0_FLEXCOMM,_RX)
#define DMAREQ_USART0_TX  __APPEND3(DMAREQ_FLEXCOMM,USART0_FLEXCOMM,_TX)

/* USART1 Defines */
#define LPC_USART1_BASE   __APPEND3(LPC_FLEXCOMM,USART1_FLEXCOMM,_BASE)
#define LPC_USART1        ((LPC_USART_T *) LPC_USART1_BASE)
#define USART1_IRQHandler __APPEND3(FLEXCOMM,USART1_FLEXCOMM,_IRQHandler)
#define USART1_IRQn       __APPEND3(FLEXCOMM,USART1_FLEXCOMM,_IRQn)
#define DMAREQ_USART1_RX  __APPEND3(DMAREQ_FLEXCOMM,USART1_FLEXCOMM,_RX)
#define DMAREQ_USART1_TX  __APPEND3(DMAREQ_FLEXCOMM,USART1_FLEXCOMM,_TX)

/* USART2 Defines */
#define LPC_USART2_BASE   __APPEND3(LPC_FLEXCOMM,USART2_FLEXCOMM,_BASE)
#define LPC_USART2        ((LPC_USART_T *) LPC_USART2_BASE)
#define USART2_IRQHandler __APPEND3(FLEXCOMM,USART2_FLEXCOMM,_IRQHandler)
#define USART2_IRQn       __APPEND3(FLEXCOMM,USART2_FLEXCOMM,_IRQn)
#define DMAREQ_USART2_RX  __APPEND3(DMAREQ_FLEXCOMM,USART2_FLEXCOMM,_RX)
#define DMAREQ_USART2_TX  __APPEND3(DMAREQ_FLEXCOMM,USART2_FLEXCOMM,_TX)

/* USART3 Defines */
#define LPC_USART3_BASE   __APPEND3(LPC_FLEXCOMM,USART3_FLEXCOMM,_BASE)
#define LPC_USART3        ((LPC_USART_T *) LPC_USART3_BASE)
#define USART3_IRQHandler __APPEND3(FLEXCOMM,USART3_FLEXCOMM,_IRQHandler)
#define USART3_IRQn       __APPEND3(FLEXCOMM,USART3_FLEXCOMM,_IRQn)
#define DMAREQ_USART3_RX  __APPEND3(DMAREQ_FLEXCOMM,USART3_FLEXCOMM,_RX)
#define DMAREQ_USART3_TX  __APPEND3(DMAREQ_FLEXCOMM,USART3_FLEXCOMM,_TX)

/* USART4 Defines */
#define LPC_USART4_BASE   __APPEND3(LPC_FLEXCOMM,USART4_FLEXCOMM,_BASE)
#define LPC_USART4        ((LPC_USART_T *) LPC_USART4_BASE)
#define USART4_IRQHandler __APPEND3(FLEXCOMM,USART4_FLEXCOMM,_IRQHandler)
#define USART4_IRQn       __APPEND3(FLEXCOMM,USART4_FLEXCOMM,_IRQn)
#define DMAREQ_USART4_RX  __APPEND3(DMAREQ_FLEXCOMM,USART4_FLEXCOMM,_RX)
#define DMAREQ_USART4_TX  __APPEND3(DMAREQ_FLEXCOMM,USART4_FLEXCOMM,_TX)

/* USART5 Defines */
#define LPC_USART5_BASE   __APPEND3(LPC_FLEXCOMM,USART5_FLEXCOMM,_BASE)
#define LPC_USART5        ((LPC_USART_T *) LPC_USART5_BASE)
#define USART5_IRQHandler __APPEND3(FLEXCOMM,USART5_FLEXCOMM,_IRQHandler)
#define USART5_IRQn       __APPEND3(FLEXCOMM,USART5_FLEXCOMM,_IRQn)
#define DMAREQ_USART5_RX  __APPEND3(DMAREQ_FLEXCOMM,USART5_FLEXCOMM,_RX)
#define DMAREQ_USART5_TX  __APPEND3(DMAREQ_FLEXCOMM,USART5_FLEXCOMM,_TX)

/* USART6 Defines */
#define LPC_USART6_BASE   __APPEND3(LPC_FLEXCOMM,USART6_FLEXCOMM,_BASE)
#define LPC_USART6        ((LPC_USART_T *) LPC_USART6_BASE)
#define USART6_IRQHandler __APPEND3(FLEXCOMM,USART6_FLEXCOMM,_IRQHandler)
#define USART6_IRQn       __APPEND3(FLEXCOMM,USART6_FLEXCOMM,_IRQn)
#define DMAREQ_USART6_RX  __APPEND3(DMAREQ_FLEXCOMM,USART6_FLEXCOMM,_RX)
#define DMAREQ_USART6_TX  __APPEND3(DMAREQ_FLEXCOMM,USART6_FLEXCOMM,_TX)

/* USART7 Defines */
#define LPC_USART7_BASE   __APPEND3(LPC_FLEXCOMM,USART7_FLEXCOMM,_BASE)
#define LPC_USART7        ((LPC_USART_T *) LPC_USART7_BASE)
#define USART7_IRQHandler __APPEND3(FLEXCOMM,USART7_FLEXCOMM,_IRQHandler)
#define USART7_IRQn       __APPEND3(FLEXCOMM,USART7_FLEXCOMM,_IRQn)
#define DMAREQ_USART7_RX  __APPEND3(DMAREQ_FLEXCOMM,USART7_FLEXCOMM,_RX)
#define DMAREQ_USART7_TX  __APPEND3(DMAREQ_FLEXCOMM,USART7_FLEXCOMM,_TX)

#endif

/**
 * @}
 */

#ifdef __cplusplus
}
#endif

#endif /* __UART_5411X_H_ */
