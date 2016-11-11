/*******************************************************************************
*
* Copyright 2007-2016 Freescale Semiconductor, Inc.
*
* This software is owned or controlled by Freescale Semiconductor.
* Use of this software is governed by the Freescale License
* distributed with this Material.
* See the LICENSE file distributed for more details.
* 
*
****************************************************************************/
#ifndef _PCLIB_CTRLPID_F16_H_
#define _PCLIB_CTRLPID_F16_H_

#if defined(__cplusplus)
extern "C" {
#endif

/*******************************************************************************
* Includes
*******************************************************************************/
#include "mlib.h"
#include "pclib_types.h"

/****************************************************************************
* Defines and macros            (scope: module-local)
****************************************************************************/
#define PCLIB_CtrlPIDInit_F16_C(psParam) PCLIB_CtrlPIDInit_F16_FC(psParam)
#define PCLIB_CtrlPID_F16_C(f16InErr, psParam) PCLIB_CtrlPID_F16_FC(f16InErr, psParam)

/****************************************************************************
* Implementation variant: 16-bit fractional
****************************************************************************/
  
    #define PCLIB_CTRL_PID_DEFAULT_F16 {(frac16_t)0,(frac16_t)0,(frac16_t)0,(frac16_t)0,(frac16_t)0,(frac16_t)0,(frac16_t)0,(frac16_t)0}     /*!< Default value for PCLIB_CTRL_PID_T_F16. */

  /************************************************************************/
  /*!
  @struct PCLIB_CTRL_PID_T_F16 "\PCLIB_CtrlPID_F16.h"

  @brief  Structure containing parameters and states of the PID controller.
  *//**********************************************************************/

  typedef struct{
    frac16_t f16Ka;  		 /*!< Controller coefficient for present error. */ 
    frac16_t f16Kb;       	 /*!< Controller coefficient for past error. */
    frac16_t f16Kc;       	 /*!< Controller coefficient for past to past error. */
    frac16_t f16DelayX1;         /*!< Controller delay parameter, past error. */
    frac16_t f16DelayX2;         /*!< Controller delay parameter, past to past error. */
    frac16_t f16DelayY1;         /*!< Controller delay parameter, past result. */
    frac16_t f16UpperLimit;  	 /*!< Control Loop Output Upper Limit */
    frac16_t f16LowerLimit;	 /*!< Control Loop Output Lower Limit */
  }PCLIB_CTRL_PID_T_F16;

/****************************************************************************
* Exported function prototypes
****************************************************************************/
  extern void PCLIB_CtrlPIDInit_F16_FC(PCLIB_CTRL_PID_T_F16 *psParam);
  extern frac16_t PCLIB_CtrlPID_F16_FC(frac16_t f16InErr, PCLIB_CTRL_PID_T_F16 *psParam);


#if defined(__cplusplus)
}
#endif

#endif /* _PCLIB_CTRLPID_F16_H_ */
