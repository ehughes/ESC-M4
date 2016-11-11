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
****************************************************************************//*!
*
* @brief  Summation of four inputs
* 
*******************************************************************************/
#ifndef _MLIB_ADD4_FLT_H_
#define _MLIB_ADD4_FLT_H_

#if defined(__cplusplus)
extern "C" {
#endif

/*******************************************************************************
* Includes
*******************************************************************************/
#include "mlib_types.h"

/*******************************************************************************
* Macros 
*******************************************************************************/  
#define MLIB_Add4_FLT_Ci(fltAdd1, fltAdd2, fltAdd3, fltAdd4)                   \
        MLIB_Add4_FLT_FCi(fltAdd1, fltAdd2, fltAdd3, fltAdd4)
  
/***************************************************************************//*!
*  Summation of four inputs        
*  fltOut = fltAdd1 + fltAdd2 + fltAdd3 + fltAdd4
*  The output saturation is not implemented.
*******************************************************************************/
static inline float_t MLIB_Add4_FLT_FCi(register float_t fltAdd1, register float_t fltAdd2, 
                                        register float_t fltAdd3, register float_t fltAdd4)
{
    return((float_t)(fltAdd1 + fltAdd2 + fltAdd3 + fltAdd4)); 
}
 
#if defined(__cplusplus)
}
#endif

#endif /* _MLIB_ADD4_FLT_H_ */
