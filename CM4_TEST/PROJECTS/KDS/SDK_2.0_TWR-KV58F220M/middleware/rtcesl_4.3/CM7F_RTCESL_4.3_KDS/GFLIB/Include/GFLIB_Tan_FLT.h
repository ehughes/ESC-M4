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
* @brief  Tangent
* 
*******************************************************************************/
#ifndef GFLIB_TAN_FLT_H
#define GFLIB_TAN_FLT_H

#if defined(__cplusplus)
extern "C" {
#endif

/*******************************************************************************
* Includes
*******************************************************************************/  
#include "mlib_FP.h"
#include "gflib_FP.h"
#include "gflib_types.h"

/*******************************************************************************
* Macros 
*******************************************************************************/
#define GFLIB_Tan_FLT_C(fltAngle)     GFLIB_Tan_FLT_FC(fltAngle, &fltgflibTanCoef)
#define GFLIB_Tan_FLTa_C(a32AngleExt) GFLIB_Tan_FLTa_FC(a32AngleExt)
 
/*******************************************************************************
* Types
*******************************************************************************/  
typedef struct
{
    const float_t fltA[4];
}   GFLIB_TAN_T_FLT;

/*******************************************************************************
* Global variables
*******************************************************************************/ 
extern const GFLIB_TAN_T_FLT fltgflibTanCoef;

/*******************************************************************************
* Exported function prototypes
*******************************************************************************/
extern float_t GFLIB_Tan_FLT_FC(float_t fltAngle,
                                const GFLIB_TAN_T_FLT *const psParam);
extern float_t GFLIB_Tan_FLTa_FC(acc32_t a32AngleExt);

#if defined(__cplusplus)
}
#endif

#endif /* GFLIB_TAN_FLT_H */
