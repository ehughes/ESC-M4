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
#ifndef _PCLIB_CTRL2P2Z_F16_H_
#define _PCLIB_CTRL2P2Z_F16_H_

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
#define PCLIB_Ctrl2P2ZInit_F16_C(psParam) PCLIB_Ctrl2P2ZInit_F16_FC(psParam)
#define PCLIB_Ctrl2P2Z_F16_C(f16InErr, psParam) PCLIB_Ctrl2P2Z_F16_FC(f16InErr, psParam)

/****************************************************************************
* Implementation variant: 16-bit fractional
****************************************************************************/
 
  #define PCLIB_CTRL_2P2Z_DEFAULT_F16 {(frac16_t)0,(frac16_t)0,(frac16_t)0,(frac16_t)0,(frac16_t)0,(frac16_t)0,(frac16_t)0,(frac16_t)0,(frac16_t)0}     /*!< Default value for PCLIB_CTRL_2P2Z_T_F16. */

  /************************************************************************/
  /*!
  @struct PCLIB_CTRL_2P2Z_T_F16 "\PCLIB_Ctrl2P2Z_F16.h"

  @brief  Structure containing parameters and states of the 2P 2Z controller.
  *//**********************************************************************/

  typedef struct{
    frac16_t f16CoeffB0;         /*!< Controller coefficient for present error. */
    frac16_t f16CoeffB1;         /*!< Controller coefficient for past error. */
    frac16_t f16CoeffB2;         /*!< Controller coefficient for past to past error. */
    frac16_t f16CoeffA1;         /*!< Controller coefficient for past result. */
    frac16_t f16CoeffA2;         /*!< Controller coefficient for past to past result. */
    frac16_t f16DelayX1;         /*!< Controller delay parameter, past error. */
    frac16_t f16DelayX2;         /*!< Controller delay parameter, past to past error. */
    frac16_t f16DelayY1;         /*!< Controller delay parameter, past result. */
    frac16_t f16DelayY2;         /*!< Controller delay parameter, past to past result. */
  }PCLIB_CTRL_2P2Z_T_F16;

/****************************************************************************
* Exported function prototypes
****************************************************************************/
  extern void PCLIB_Ctrl2P2ZInit_F16_FC(PCLIB_CTRL_2P2Z_T_F16 *psParam);
  extern frac16_t PCLIB_Ctrl2P2Z_F16_FC(frac16_t f16InErr, PCLIB_CTRL_2P2Z_T_F16 *psParam);



#if defined(__cplusplus)
}
#endif

#endif /* _PCLIB_CTRL2P2Z_F16_H_ */
