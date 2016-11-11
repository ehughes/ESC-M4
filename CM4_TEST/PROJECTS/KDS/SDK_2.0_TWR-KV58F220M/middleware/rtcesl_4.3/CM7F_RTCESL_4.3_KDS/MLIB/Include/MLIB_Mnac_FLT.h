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
* @brief  Multiply negate accumulate
* 
*******************************************************************************/
#ifndef _MLIB_MNAC_FLT_H_
#define _MLIB_MNAC_FLT_H_

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
#define MLIB_Mnac_FLT_Ci( fltAccum, fltMult1, fltMult2)                         \
        MLIB_Mnac_FLT_FCi(fltAccum, fltMult1, fltMult2)

/***************************************************************************//*!
*
* fltOut = - fltAccum + ( fltMult1 * fltMult2)
* The output saturation is not implemented, thus in case 
* the Mnac of input values is outside the (-2^128, 2^128) interval.
*******************************************************************************/
static inline float_t MLIB_Mnac_FLT_FCi(register float_t fltAccum, 
                                        register float_t fltMult1, register float_t fltMult2)
{
    return((float_t) ((fltMult1 * fltMult2) - fltAccum));  
}
 
#if defined(__cplusplus)
}
#endif

#endif  /* _MLIB_MNAC_FLT_H_ */
