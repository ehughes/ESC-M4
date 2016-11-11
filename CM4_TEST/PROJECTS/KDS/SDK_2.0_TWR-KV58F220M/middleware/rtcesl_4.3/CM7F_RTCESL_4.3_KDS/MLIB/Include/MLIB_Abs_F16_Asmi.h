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
* @brief  Absolute Value
* 
*******************************************************************************/
#ifndef _MLIB_ABS_F16_ASM_H_
#define _MLIB_ABS_F16_ASM_H_

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
#define MLIB_AbsSat_F16_Asmi(f16Val) MLIB_AbsSat_F16_FAsmi(f16Val)

/***************************************************************************//*!
*  Absolute value saturated
*     f16Out = |f16In|
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
static inline frac16_t MLIB_AbsSat_F16_FAsmi(register frac16_t f16Val)
{
    #if defined(__CC_ARM)                                    /* For ARM Compiler */
        __asm volatile{ lsls f16Val, f16Val, #16             /* f16Val << 16 */
                        it mi                                /* If f16Val < 0, then implements next command */
                        rsbmi f16Val, f16Val, #0             /* If f16Val < 0, then f16Val = 0 - f16Val */
                        lsr f16Val, f16Val, #16              /* f16Val >> 16 */
                        usat f16Val, #15, f16Val };          /* Saturates the result */
    #else
        __asm volatile( "lsls %0, %0, #16 \n"                /* f16Val << 16 */
                        "it mi \n"                           /* If f16Val < 0, then implements next command */
                        "rsbmi %0, %0, #0 \n"                /* If f16Val < 0, then f16Val = 0 - f16Val */
                        "lsr %0, %0, #16 \n"                 /* f16Val >> 16 */
                        "usat %0, #15, %0 \n"                /* Saturates the result */
                        : "+l"(f16Val):);
    #endif

    return f16Val;
}
#if defined(__IAR_SYSTEMS_ICC__) /* set no optimization for IAR compiler   */
    #pragma language=restore     /* Restore original optimization level */         
#elif defined(__CC_ARM)          /* set no optimization for ARM(KEIL) compiler */  
#else                            /* set no optimization for GCC(KDS) compiler */                
#endif 

#if defined(__cplusplus)
}
#endif

#endif /*_MLIB_ABS_F16_ASM_H_*/
