/*
 * @brief USB subsystem routines.
 *
 * @note
 * Copyright(C) NXP Semiconductors, 2013
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

#include <string.h>
#include <stdlib.h>
#include "board.h"
/* USB header files */
#include "audio_usbd.h"
#include "audio_codec.h"
//#include "ui2s_api.h"

/*****************************************************************************
 * Private types/enumerations/variables
 ****************************************************************************/

static USBD_HANDLE_T g_hUsb;

ALIGN(64) static uint8_t data_buffer[MAX_SUBSTREAMS][AUDIO_MAX_PKT_SZ * NUM_DTDS];
void * const out_buff = data_buffer[SUBS_SPEAKER];
const uint32_t out_buff_sz = sizeof(data_buffer[SUBS_SPEAKER]);
void * const in_buff = data_buffer[SUBS_MIC];
const uint32_t in_buff_sz = sizeof(data_buffer[SUBS_MIC]);

/*****************************************************************************
 * Public types/enumerations/variables
 ****************************************************************************/

const  USBD_API_T *g_pUsbApi;

/*****************************************************************************
 * Private functions
 ****************************************************************************/

/* Initialize pin and clocks for USB0/USB1 port */
static void usb_pin_clk_init(void)
{
	/* enable clocks and pinmux */
	Chip_USB_Init();
}

//__attribute__ ((section("RamCodeSections")))
static ErrorCode_t StallWorkAround(USBD_HANDLE_T hUsb)
{
	USB_CORE_CTRL_T *pCtrl = (USB_CORE_CTRL_T *) hUsb;
	EP_Queue_T *epQueue;
	int32_t i;

	/*	WORKAROUND for artf44835 ROM driver BUG:
	   Code clearing STALL bits in endpoint reset routine corrupts memory area
	    next to the endpoint control data.
	 */
	if (pCtrl->ep_halt != 0) {	/* check if STALL is set for any endpoint */
		/* get pointer to HW EP queue */
		epQueue = (EP_Queue_T *) LPC_USB->EPLISTSTART;
		/* check if the HW STALL bit for the endpoint is cleared due to bug. */
		for (i = 1; i < pCtrl->max_num_ep; i++) {
			/* check OUT EPs */
			if ( pCtrl->ep_halt & (1 << i)) {
				/* Check if HW EP queue also has STALL bit = _BIT(29) is set */
				if (( epQueue[i << 1].td[0] & _BIT(29)) == 0) {
					/* bit not set, cleared by BUG. So set it back. */
					epQueue[i << 1].td[0] |= _BIT(29);
				}
			}
			/* Check IN EPs */
			if ( pCtrl->ep_halt & (1 << (i + 16))) {
				/* Check if HW EP queue also has STALL bit = _BIT(29) is set */
				if (( epQueue[(i << 1) + 1].td[0] & _BIT(29)) == 0) {
					/* bit not set, cleared by BUG. So set it back. */
					epQueue[(i << 1) + 1].td[0] |= _BIT(29);
				}
			}
		}
	}

	/* call Audio call interface handler */
	return ADC_Interface_Event(hUsb);
}

/*****************************************************************************
 * Public functions
 ****************************************************************************/

/* Initialize USB sub system */
ErrorCode_t usbd_init(void)
{
	USBD_API_INIT_PARAM_T usb_param;
	USB_CORE_DESCS_T desc;
	ADC_INIT_PARAM_T adc_param;
	ErrorCode_t ret = LPC_OK;
	ALIGN(2048) static uint8_t usbd_mem[USB_STACK_MEM_SIZE];

	/* enable clocks and pinmux */
	usb_pin_clk_init();

	/* initialize USBD ROM API pointer. */
	g_pUsbApi = (const USBD_API_T *) LPC_ROM_API->usbdApiBase;

	/* initialize call back structures */
	memset((void *) &usb_param, 0, sizeof(USBD_API_INIT_PARAM_T));
	usb_param.usb_reg_base = LPC_USB_BASE;
	/*	WORKAROUND for artf44835 ROM driver BUG:
	    Code clearing STALL bits in endpoint reset routine corrupts memory area
	    next to the endpoint control data. For example When EP0, EP1_IN, EP1_OUT,
	    EP2_IN are used we need to specify 3 here. But as a workaround for this
	    issue specify 4. So that extra EPs control structure acts as padding buffer
	    to avoid data corruption. Corruption of padding memory doesn’t affect the
	    stack/program behaviour.
	 */
	usb_param.max_num_ep = 2 + 1;
	usb_param.USB_Interface_Event = StallWorkAround;
	usb_param.USB_Reset_Event = ADC_Reset_Event;
	usb_param.USB_SOF_Event = ADC_SOF_Event;

	usb_param.USB_Suspend_Event = ADC_Suspend_Event;
	usb_param.USB_Resume_Event = ADC_Resume_Event;

	usb_param.mem_base = (uint32_t) usbd_mem;//USB_STACK_MEM_BASE;
	usb_param.mem_size = USB_STACK_MEM_SIZE;

	/* Set the USB descriptors */
	desc.device_desc = (uint8_t *) &USB_DeviceDescriptor[0];
	desc.string_desc = (uint8_t *) &USB_StringDescriptor[0];
	/* Note, to pass USBCV test full-speed only devices should have both
	   descriptor arrays point to same location and device_qualifier set to 0.
	 */
	desc.high_speed_desc = (uint8_t *) &USB_FsConfigDescriptor[0];
	desc.full_speed_desc = (uint8_t *) &USB_FsConfigDescriptor[0];
	desc.device_qualifier = 0;

	/* USB Initialization */
	ret = USBD_API->hw->Init(&g_hUsb, &desc, &usb_param);
	if (ret == LPC_OK) {

		/* ROM driver blocks memory for ISOC EPs but in this app we don't use */
		usb_param.mem_size = sizeof(data_buffer);	/* buffers for ISO-in/out endpoints listed in 24-bit ALT interface */

		/*	WORKAROUND for artf32219 ROM driver BUG:
		    The mem_base parameter part of USB_param structure returned
		    by Init() routine is not accurate causing memory allocation issues for
		    further components.
		 */
		usb_param.mem_base = (uint32_t) data_buffer;

		/* construct Audio class initialization parameters */
		memset((void *) &adc_param, 0, sizeof(ADC_INIT_PARAM_T));
		adc_param.hUsb = g_hUsb;
		adc_param.param = &usb_param;
		adc_param.maxp[SUBS_SPEAKER] = AUDIO_MAX_PKT_SZ;
		adc_param.ep_num[SUBS_SPEAKER] = USB_ADC_OUT_EP;
		adc_param.maxp[SUBS_MIC] = AUDIO_MAX_PKT_SZ;
		adc_param.ep_num[SUBS_MIC] = USB_ADC_IN_EP;

		/* Initialize audio class controller */
		ret = ADC_init(&adc_param);
		if (ret == LPC_OK) {
			/*  enable USB interrupts */
			NVIC_EnableIRQ(USB_IRQn);
			/* now connect */
			USBD_API->hw->Connect(g_hUsb, 1);
		}

	}
	return ret;
}

/**
 * @brief	Handle interrupt from USB0
 * @return	Nothing
 */
//__attribute__ ((section("RamCodeSections")))
void USB_IRQHandler(void)
{
	uint32_t *addr = (uint32_t *) LPC_USB->EPLISTSTART;

	/*	WORKAROUND for artf32289 ROM driver BUG:
	    As part of USB specification the device should respond
	    with STALL condition for any unsupported setup packet. The host will send
	    new setup packet/request on seeing STALL condition for EP0 instead of sending
	    a clear STALL request. Current driver in ROM doesn't clear the STALL
	    condition on new setup packet which should be fixed.
	 */
	if ( LPC_USB->DEVCMDSTAT & _BIT(8) ) {	/* if setup packet is received */
		addr[0] &= ~(_BIT(29));	/* clear EP0_OUT stall */
		addr[2] &= ~(_BIT(29));	/* clear EP0_IN stall */
	}
	USBD_API->hw->ISR(g_hUsb);
}
