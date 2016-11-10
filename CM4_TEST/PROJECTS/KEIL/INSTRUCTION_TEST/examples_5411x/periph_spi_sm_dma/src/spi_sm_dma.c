/*
 * @brief SPI master and slave example (DMA)
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

#include "board.h"
#include "string.h"

/*****************************************************************************
 * Private types/enumerations/variables
 ****************************************************************************/
#define SPI0_FLEXCOMM   				5      											/* SPI0 (master) is FLEXCOMM 5	*/
#define LPC_SPIMASTERPORT               LPC_SPI0										/* Master SPI port				*/
#define SPIMASTERIRQHANDLER             SPI0_IRQHandler									/* Master IRQ handler			*/
#define LPC_SPIMASTERIRQNUM             SPI0_IRQn										/* Master IRQ number			*/
#define SPI_MASTER_SSEL                 2												/* Master select line			*/

#define SPI1_FLEXCOMM   				3      											/* SPI1 (slave)  is FLEXCOMM 3	*/
#define LPC_SPISLAVEPORT                LPC_SPI1										/* Slave SPI port				*/
#define SPISLAVEIRQHANDLER              SPI1_IRQHandler									/* Slave IRQ handler			*/
#define LPC_SPISLAVEIRQNUM              SPI1_IRQn										/* Slave IRQ number				*/
#define SPI_SLAVE_SSEL                  0												/* Slave select line			*/

#define LPCMASTERCLOCKRATE				4000000											/* SPI clock rate				*/

#define BUFFER_CT						32												/* Buffer RX / TX count			*/
#define	SPI_IO_CT						32												/* I/O SPI transfer count		*/
#define	PR_LINE							4												/* display 4 lines				*/
#define	PR_ITEM							8												/* display 8 items / line		*/

/*****************************************************************************
 * Public types/enumerations/variables
 ****************************************************************************/
uint32_t		m_tx_buff[BUFFER_CT];													/* Master structures */
uint32_t		m_rx_buff[BUFFER_CT];
SPIM_XFER_T		spiMasterXfer;
uint32_t		master_err_tx, master_err_rx;

uint32_t		s_tx_buff[BUFFER_CT];													/* Slave structures */
uint32_t		s_rx_buff[BUFFER_CT];
SPIS_XFER_T		spiSlaveXfer;
uint32_t 		slave_err_tx, slave_err_rx;

uint32_t		xfer_complete;
uint32_t		dma_isr_count, spim_isr_count, spis_isr_count;

/* Initializes pin muxing for SPI1 interface */
static void Init_SPI_PinMux(void)
{
	/* Connect the SPI1 signals to port pins */
	Chip_IOCON_PinMuxSet(LPC_IOCON, 0, 11, (IOCON_FUNC1 | IOCON_MODE_PULLUP | IOCON_DIGITAL_EN));	/* SPI1_SCK */
	Chip_IOCON_PinMuxSet(LPC_IOCON, 0, 12, (IOCON_FUNC1 | IOCON_MODE_PULLUP | IOCON_DIGITAL_EN));	/* SPI1_MOSI */
	Chip_IOCON_PinMuxSet(LPC_IOCON, 0, 13, (IOCON_FUNC1 | IOCON_MODE_PULLUP | IOCON_DIGITAL_EN));	/* SPI1_MISO */
	Chip_IOCON_PinMuxSet(LPC_IOCON, 0, 14, (IOCON_FUNC1 | IOCON_MODE_PULLUP | IOCON_DIGITAL_EN));	/* SPI1_SSEL0 */

	/* Connect the SPI0 signals to port pins */
	Chip_IOCON_PinMuxSet(LPC_IOCON, 1, 1,   (IOCON_FUNC4 | IOCON_MODE_PULLUP | IOCON_DIGITAL_EN));	/* SPI0_SSEL2 */
	Chip_IOCON_PinMuxSet(LPC_IOCON, 0, 19,  (IOCON_FUNC1 | IOCON_MODE_PULLUP | IOCON_DIGITAL_EN));	/* SPI0_SCK */
	Chip_IOCON_PinMuxSet(LPC_IOCON, 0, 20,  (IOCON_FUNC1 | IOCON_MODE_PULLUP | IOCON_DIGITAL_EN));	/* SPI0_MOSI */
	Chip_IOCON_PinMuxSet(LPC_IOCON, 0, 18,  (IOCON_FUNC1 | IOCON_MODE_PULLUP | IOCON_DIGITAL_EN));	/* SPI0_MISO */
}

static uint16_t build_tx_ctrl(SPIM_XFER_T *xfer)
{
	uint16_t ctrl;

	ctrl  = SPI_TXDAT_ASSERTNUM_SSEL(xfer->sselNum);
	ctrl |= SPI_TXDAT_FLEN(xfer->dataWidth-1);
	ctrl |= (xfer->option & SPIM_XFER_OPT_FRAME_DLY)	? SPI_TXDAT_EOF : 0;
	ctrl |= (xfer->option & SPIM_XFER_OPT_FRAME_ASSERT)	? SPI_TXDAT_EOT : 0;

	/* If no receive, then ignore the receive data */
	if ((xfer->rxCount == 0)||(xfer->rxData == NULL)) {
		ctrl |= SPI_TXDAT_RXIGNORE;
	}

	/* Add EOT to end of transmission */
	xfer->txIndex += 1;
	if (xfer->txIndex == xfer->txCount) {
		ctrl |= SPI_TXDAT_EOT;
	}

	return ctrl;
}

/* Initialize buffers for slave and master */
static uint16_t txBufferInit(SPIM_XFER_T *xfer, uint16_t seed)
{
	uint16_t i, ctrl;

	for (i=0; i<SPI_IO_CT; i++) {
		ctrl = build_tx_ctrl(xfer);
		m_tx_buff[i] = (ctrl<<16) | (seed & 0xffff);
		s_tx_buff[i] = (ctrl<<16) | ((~seed) & 0xffff);
		seed+=1;
	}

	return seed;
}
static void rxBufferInit(void)
{
	int i;
	for (i=0; i<SPI_IO_CT; i++) {
		s_rx_buff[i] = m_rx_buff[i] = 0xaaaa;
	}
}

static void master_xfer_init(void)
{
	memset((void*)&spiMasterXfer, 0, sizeof(spiMasterXfer));					/* clear the structure first */
	spiMasterXfer.txData = m_tx_buff;											/* set master transmit pointer */
	spiMasterXfer.txCount = SPI_IO_CT;                                          /* set master transmit frame count */
	spiMasterXfer.rxData = m_rx_buff;		                  					/* set master receive pointer */
	spiMasterXfer.rxCount = SPI_IO_CT;                     						/* set master receive frame count */
	spiMasterXfer.dataWidth = 16;												/* Each data is 16-bits */
	spiMasterXfer.sselNum = SPI_MASTER_SSEL;									/* set SPI select */
	spiMasterXfer.txIndex = 0;													/* clear the transmit buffer index */
	spiMasterXfer.rxIndex = 0;													/* clear the receive buffer index */
	spiMasterXfer.option = SPIM_XFER_OPT_FRAME_DLY | SPIM_XFER_OPT_DMA;			/* enable frame delay and DMA */
}

static void slave_xfer_init(void)
{
	memset((void*)&spiSlaveXfer, 0, sizeof(spiSlaveXfer));						/* clear the structure first */
	spiSlaveXfer.txData = s_tx_buff;											/* set slave transmit pointer */
	spiSlaveXfer.txCount = SPI_IO_CT;											/* set slave transmit frame count */
	spiSlaveXfer.rxData = s_rx_buff;											/* set slave receive pointer */
	spiSlaveXfer.rxCount = SPI_IO_CT;											/* set slave receive frame count */
	spiSlaveXfer.dataWidth = 16;												/* Each data is 16-bits */
	spiSlaveXfer.sselNum = SPI_SLAVE_SSEL;										/* set SPI select */
	spiSlaveXfer.txIndex = 0;													/* clear the transmit buffer index */
	spiSlaveXfer.rxIndex = 0;													/* clear the receive buffer index */
}

void buff_print_32(char *hdr, uint32_t *dat)
{
	int i, j;

	DEBUGOUT("\r\n%s (32-bit):\r\n", hdr);
	for (i=0; i<PR_LINE; i++) {
		for (j=0; j<PR_ITEM; j++) {
			DEBUGOUT("0x%08x ", *dat++);
		}
		DEBUGSTR("\r\n");
	}
}

void buff_print_16(char *hdr, uint16_t *dat)
{
	int i, j;

	DEBUGOUT("\r\n%s (16-bit):\r\n", hdr);
	for (i=0; i<PR_LINE; i++) {
		for (j=0; j<PR_ITEM; j++) {
			DEBUGOUT("0x%04x ", *dat++);
		}
		DEBUGSTR("\r\n");
	}
}

void SPI_config_master(void)
{
	int ret;
	SPI_CFGSETUP_T spiSetup;
	SPIM_DELAY_CONFIG_T masterDelay;

	ret = Chip_SPI_Init(LPC_SPIMASTERPORT);
	LPC_ASSERT(!ret, __FILE__, __LINE__);

	Chip_SPI_Enable(LPC_SPIMASTERPORT);
	spiSetup.master		= 1;
	spiSetup.lsbFirst	= 0;
	spiSetup.mode		= SPI_CLOCK_MODE0;
	Chip_SPI_ConfigureSPI(LPC_SPIMASTERPORT, &spiSetup);

	Chip_SPI_SetFIFOCfg(LPC_SPIMASTERPORT, (SPI_FIFOCFG_DMATX|SPI_FIFOCFG_DMARX));
	Chip_SPI_SetCSPolLow(LPC_SPIMASTERPORT, SPI_MASTER_SSEL);
	Chip_SPIM_SetClockRate(LPC_SPIMASTERPORT, LPCMASTERCLOCKRATE);

	masterDelay.PreDelay		= 0x01;
	masterDelay.PostDelay		= 0x01;
	masterDelay.FrameDelay		= 0x02;
	masterDelay.TransferDelay	= 0x01;
	Chip_SPIM_DelayConfig(LPC_SPIMASTERPORT, &masterDelay);
}

void SPI_config_slave(void)
{
	int ret;
	SPI_CFGSETUP_T spiSetup;

	ret = Chip_SPI_Init(LPC_SPISLAVEPORT);
	LPC_ASSERT(!ret, __FILE__, __LINE__);

	Chip_SPI_Enable(LPC_SPISLAVEPORT);
	spiSetup.master		= 0;
	spiSetup.lsbFirst	= 0;
	spiSetup.mode		= SPI_CLOCK_MODE0;
	Chip_SPI_ConfigureSPI(LPC_SPISLAVEPORT, &spiSetup);

	Chip_SPI_SetFIFOCfg(LPC_SPISLAVEPORT, (SPI_FIFOCFG_DMATX|SPI_FIFOCFG_DMARX));
	Chip_SPI_SetCSPolLow(LPC_SPISLAVEPORT, SPI_SLAVE_SSEL);
}

const uint32_t cfg_single = DMA_CFG_PERIPHREQEN|DMA_CFG_TRIGBURST_SNGL;

static void DMA_config(void)
{
	/* Initialize */
	Chip_DMA_Init(LPC_DMA);
	Chip_DMA_Enable(LPC_DMA);
	Chip_DMA_SetSRAMBase(LPC_DMA, DMA_ADDR(Chip_DMA_Table));

	/* Configure master transmit */
	Chip_DMA_EnableChannel(LPC_DMA, DMAREQ_SPI0_TX);
	Chip_DMA_EnableIntChannel(LPC_DMA, DMAREQ_SPI0_TX);
	Chip_DMA_SetupChannelConfig(LPC_DMA, DMAREQ_SPI0_TX, (cfg_single | DMA_CFG_CHPRIORITY(0)));

	/* Configure master receive */
	Chip_DMA_EnableChannel(LPC_DMA, DMAREQ_SPI0_RX);
	Chip_DMA_EnableIntChannel(LPC_DMA, DMAREQ_SPI0_RX);
	Chip_DMA_SetupChannelConfig(LPC_DMA, DMAREQ_SPI0_RX, (cfg_single | DMA_CFG_CHPRIORITY(1)));

	/* Configure slave transmit */
	Chip_DMA_EnableChannel(LPC_DMA, DMAREQ_SPI1_TX);
	Chip_DMA_EnableIntChannel(LPC_DMA, DMAREQ_SPI1_TX);
	Chip_DMA_SetupChannelConfig(LPC_DMA, DMAREQ_SPI1_TX, (cfg_single | DMA_CFG_CHPRIORITY(2)));

	/* Configure slave receive */
	Chip_DMA_EnableChannel(LPC_DMA, DMAREQ_SPI1_RX);
	Chip_DMA_EnableIntChannel(LPC_DMA, DMAREQ_SPI1_RX);
	Chip_DMA_SetupChannelConfig(LPC_DMA, DMAREQ_SPI1_RX, (cfg_single | DMA_CFG_CHPRIORITY(3)));

	/* Enable DMA interrupt */
	NVIC_EnableIRQ(DMA_IRQn);
}

void DMA_master_tx(SPIM_XFER_T* xfer)
{
	DMA_CHDESC_T	dma_desc;
	uint32_t*		buff;
	uint16_t		len;

	len = xfer->txCount;
	buff = xfer->txData;

	memset((void*)&dma_desc, 0, sizeof(DMA_CHDESC_T));
	dma_desc.xfercfg	= 0;
	dma_desc.source		= DMA_ADDR(buff + (len-1));
	dma_desc.dest		= DMA_ADDR(&(LPC_SPIMASTERPORT->FIFOWR));
	dma_desc.next		= DMA_ADDR(NULL);

	Chip_DMA_SetupTranChannel(LPC_DMA, DMAREQ_SPI0_TX, &dma_desc);
	Chip_DMA_SetValidChannel(LPC_DMA, DMAREQ_SPI0_TX);
	Chip_DMA_SetupChannelTransfer(LPC_DMA, DMAREQ_SPI0_TX, (DMA_XFERCFG_CFGVALID | DMA_XFERCFG_SETINTA | DMA_XFERCFG_SWTRIG | DMA_XFERCFG_WIDTH_32 | DMA_XFERCFG_SRCINC_1 | DMA_XFERCFG_DSTINC_0 | DMA_XFERCFG_XFERCOUNT(len)));
}

void DMA_master_rx(SPIM_XFER_T* xfer)
{
	DMA_CHDESC_T	dma_desc;
	uint32_t*		buff;
	uint16_t		len;

	len = xfer->rxCount;
	buff = (uint32_t*)xfer->rxData;

	memset((void*)&dma_desc, 0, sizeof(DMA_CHDESC_T));
	dma_desc.xfercfg	= 0;
	dma_desc.source		= DMA_ADDR(&(LPC_SPIMASTERPORT->FIFORD));
	dma_desc.dest		= DMA_ADDR(buff + (len-1));
	dma_desc.next		= DMA_ADDR(NULL);

	Chip_DMA_SetupTranChannel(LPC_DMA, DMAREQ_SPI0_RX, &dma_desc);
	Chip_DMA_SetValidChannel(LPC_DMA, DMAREQ_SPI0_RX);
	Chip_DMA_SetupChannelTransfer(LPC_DMA, DMAREQ_SPI0_RX, (DMA_XFERCFG_CFGVALID | DMA_XFERCFG_SETINTA | DMA_XFERCFG_SWTRIG | DMA_XFERCFG_WIDTH_32 | DMA_XFERCFG_SRCINC_0 | DMA_XFERCFG_DSTINC_1 | DMA_XFERCFG_XFERCOUNT(len)));
}

void DMA_slave_tx(SPIS_XFER_T* xfer)
{
	DMA_CHDESC_T	dma_desc;
	uint32_t*		buff;
	uint16_t		len;

	len = xfer->txCount;
	buff = xfer->txData;

	memset((void*)&dma_desc, 0, sizeof(DMA_CHDESC_T));
	dma_desc.xfercfg	= 0;
	dma_desc.source		= DMA_ADDR(buff + (len-1));
	dma_desc.dest		= DMA_ADDR(&(LPC_SPISLAVEPORT->FIFOWR));
	dma_desc.next		= DMA_ADDR(NULL);

	Chip_DMA_SetupTranChannel(LPC_DMA, DMAREQ_SPI1_TX, &dma_desc);
	Chip_DMA_SetValidChannel(LPC_DMA, DMAREQ_SPI1_TX);
	Chip_DMA_SetupChannelTransfer(LPC_DMA, DMAREQ_SPI1_TX, (DMA_XFERCFG_CFGVALID | DMA_XFERCFG_SETINTA | DMA_XFERCFG_SWTRIG | DMA_XFERCFG_WIDTH_32 | DMA_XFERCFG_SRCINC_1 | DMA_XFERCFG_DSTINC_0 | DMA_XFERCFG_XFERCOUNT(len)));
}

void DMA_slave_rx(SPIS_XFER_T* xfer)
{
	DMA_CHDESC_T	dma_desc;
	uint32_t*		buff;
	uint16_t		len;

	len = xfer->rxCount;
	buff = (uint32_t*)xfer->rxData;

	memset((void*)&dma_desc, 0, sizeof(DMA_CHDESC_T));
	dma_desc.source	= DMA_ADDR(&(LPC_SPISLAVEPORT->FIFORD));
	dma_desc.dest	= DMA_ADDR(buff + (len-1));
	dma_desc.next	= DMA_ADDR(NULL);

	Chip_DMA_SetupTranChannel(LPC_DMA, DMAREQ_SPI1_RX, &dma_desc);
	Chip_DMA_SetValidChannel(LPC_DMA, DMAREQ_SPI1_RX);
	Chip_DMA_SetupChannelTransfer(LPC_DMA, DMAREQ_SPI1_RX, (DMA_XFERCFG_CFGVALID | DMA_XFERCFG_SETINTA | DMA_XFERCFG_SWTRIG | DMA_XFERCFG_WIDTH_32 | DMA_XFERCFG_SRCINC_0 | DMA_XFERCFG_DSTINC_1 | DMA_XFERCFG_XFERCOUNT(len)));
}	


/*****************************************************************************
 * Public functions
 ****************************************************************************/

/**
 * @brief	Handle interrupt from SysTick timer
 * @return	Nothing
 */
static uint32_t timer_ct;
void SysTick_Delay(uint32_t delay)
{
	uint32_t delay_ct;

	delay_ct = timer_ct + delay;
	while (timer_ct != delay_ct) __WFI();
}
void SysTick_Handler(void)
{
	timer_ct+=1;
}

/**
 * @brief	SPI0 interrupt handler sub-routine (master)
 * @return	Nothing
 */
void SPIMASTERIRQHANDLER(void)
{
	spim_isr_count += 1;
	Chip_SPIM_XferHandler(LPC_SPIMASTERPORT, &spiMasterXfer);
}

/**
 * @brief	SPI1 interrupt handler sub-routine (slave)
 * @return	Nothing
 */
void SPISLAVEIRQHANDLER(void)
{
	spis_isr_count += 1;
	Chip_SPIS_XferHandler(LPC_SPISLAVEPORT, &spiSlaveXfer);
}

/**
 * @brief	DMA Interrupt Handler
 * @return	None
 */
void DMA_IRQHandler(void)
{
	uint32_t dma_inta;

	dma_isr_count+=1;
	dma_inta = Chip_DMA_GetActiveIntAChannels(LPC_DMA);
	
	/* handle master interrupts */
	if (dma_inta & (1<<DMAREQ_SPI0_TX)) {
		Chip_DMA_ClearActiveIntAChannel(LPC_DMA, DMAREQ_SPI0_TX);
		xfer_complete |= 0x01;
	}
	if (dma_inta & (1<<DMAREQ_SPI0_RX)) {
		Chip_DMA_ClearActiveIntAChannel(LPC_DMA, DMAREQ_SPI0_RX);
		xfer_complete |= 0x02;
	}

	/* handle slave interrupts */
	if (dma_inta & (1<<DMAREQ_SPI1_TX)) {
		Chip_DMA_ClearActiveIntAChannel(LPC_DMA, DMAREQ_SPI1_TX);
		xfer_complete |= 0x04;
	}
	if (dma_inta & (1<<DMAREQ_SPI1_RX)) {
		Chip_DMA_ClearActiveIntAChannel(LPC_DMA, DMAREQ_SPI1_RX);
		xfer_complete |= 0x08;
	}
}

/**
 * @brief	Main routine for SPI example
 * @return	Nothing
 */
int main(void)
{
	uint16_t seed = 0x4100;

	SystemCoreClockUpdate();
	Board_Init();
	Board_LED_RGB_Set(LED_RGB_RED);
	SysTick_Config(SystemCoreClock / 100);										/* enable sys-tick timer @ 100Hz (10ms/tick)*/
	
	Init_SPI_PinMux();															/* configure SPI pins */
	SPI_config_master();														/* configure SPI master port */
	SPI_config_slave();															/* configure SPI slave port */
	DMA_config();																/* configure DMA peripheral */
	
	DEBUGOUT("SPI master/slave combined example (DMA version)\r\n");
	DEBUGOUT("Processor Speed: %dMHz\r\n",SystemCoreClock/1000000);
	DEBUGOUT("Build date: %s / time: %s\r\n",__DATE__, __TIME__);
	DEBUGOUT("  Master device: 0x%p\r\n", LPC_SPIMASTERPORT);
	DEBUGOUT("   Slave device: 0x%p\r\n\r\n", LPC_SPISLAVEPORT);

	xfer_complete = 0;															/* clear transfer complete */
	dma_isr_count = spim_isr_count = spis_isr_count = 0;						/* clear transfer complete */
	
	/* Set up master transfer block */
	master_xfer_init();															/* init master xfer struct (do before buffer configuration) */
	seed = txBufferInit(&spiMasterXfer, seed);									/* configure master buffers */
	master_err_tx = master_err_rx = 0;											/* clear error counters */

	/* Set up slave transfer block */
	slave_xfer_init();															/* initialize slave xfer structure */
	rxBufferInit();																/* configure slave buffer */
	slave_err_tx = slave_err_rx = 0;											/* clear error counters */

	DEBUGOUT("Transfer started...");
	DMA_master_rx(&spiMasterXfer);												/* start the DMA receive */
	DMA_slave_tx(&spiSlaveXfer);												/* enable slave tx DMA */

	DMA_slave_rx(&spiSlaveXfer);												/* enable slave rx DMA */
	DMA_master_tx(&spiMasterXfer);												/* execute the master send */
	while (xfer_complete != 0x0f) {												/* Sleep until rx and tx transfers are complete */
		__WFI();
	}
	DEBUGOUT("transfer complete\r\n");											/* transfer complete */

	/* Display transfer details and data */
	DEBUGOUT("DMA ISR count: %d/0x%04x\r\n", dma_isr_count, xfer_complete);
	DEBUGOUT("SPI ISR count: %d/%d\r\n", spim_isr_count,spis_isr_count);
	DEBUGOUT("FIFO trigger level: 0x%08x\r\n", Chip_SPI_GetFIFOTrigLevel(LPC_SPIMASTERPORT));
	buff_print_32("Master TX data", m_tx_buff);
	buff_print_32("Master RX data", m_rx_buff);
	buff_print_32("Slave  TX data", s_tx_buff);
	buff_print_32("Slave  RX data", s_rx_buff);
	DEBUGOUT("\r\n");

	DEBUGOUT("Demo complete.\r\n");
	SysTick_Delay(1);
	
	return 0;
}
