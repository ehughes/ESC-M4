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
* @brief  Addition
* 
*******************************************************************************/
#ifndef _MLIB_ADD_F16_ASM_H_
#define _MLIB_ADD_F16_ASM_H_

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
#define MLIB_AddSat_F16_Asmi(f16Add1, f16Add2) MLIB_AddSat_F16_FAsmi(f16Add1, f16Add2)
  
/***************************************************************************//*!
*  Saturated Addition
*     f16Out = f16Add1 + f16Add2
*******************************************************************************/
/* inline function without any optimization (compilation issue) */
#if defined(__IAR_SYSTEMS_ICC__) /* set no optimization for IAR compiler   */
    #pragma language=save        /* Save existing optimization level */
    #pragma optimize=none        /* Optimization none level now */        
#elif defined(__CC_ARM)          /* set no optimization for ARM(KEIL) compiler */
    #pragma O0                   /* Optimization level now O0 */                    
#else                            /* set no optimization for GCC(KDS) compiler */
    __attribute__((optimize("O0")))  
#endif
static inline frac16_t MLIB_AddSat_F16_FAsmi(register frac16_t f16Add1, register frac16_t f16Add2)
{
    #if defined(__CC_ARM)                                   /* For ARM Compiler */
        __asm volatile{ qadd16 f16Add1, f16Add1, f16Add2};  /* Adds with saturation */
    #else
        __asm volatile( "qadd16 %0, %0, %1 \n"              /* Adds with saturation */
                        : "+l"(f16Add1): "l"(f16Add2));
    #endif

    return f16Add1;
}
#if defined(__IAR_SYSTEMS_ICC__) /* set no optimization for IAR compiler   */
    #pragma language=restore     /* Restore original optimization level */         
#elif defined(__CC_ARM)          /* set no optimization for ARM(KEIL) compiler */  
#else                            /* set no optimization for GCC(KDS) compiler */                
#endif 

#if defined(__cplusplus)
}
#endif

#endif  /*_MLIB_ADD_F16_ASM_H_*/
