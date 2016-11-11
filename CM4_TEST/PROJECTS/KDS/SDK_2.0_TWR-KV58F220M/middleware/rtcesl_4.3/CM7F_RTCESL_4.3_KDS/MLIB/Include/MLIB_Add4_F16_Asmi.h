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
#ifndef _MLIB_ADD4_F16_ASM_H_
#define _MLIB_ADD4_F16_ASM_H_

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
#define MLIB_Add4_F16_Asmi(f16Add1, f16Add2, f16Add3, f16Add4) MLIB_Add4_F16_FAsmi(f16Add1, f16Add2, f16Add3, f16Add4)
#define MLIB_Add4Sat_F16_Asmi(f16Add1, f16Add2, f16Add3, f16Add4) MLIB_Add4Sat_F16_FAsmi(f16Add1, f16Add2, f16Add3, f16Add4)

/***************************************************************************//*!
*  Summation of four inputs
*     f16Out = f16Add1 + f16Add2 + f16Add3 + f16Add4
*  function is not saturated
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
static inline frac16_t MLIB_Add4_F16_FAsmi(register frac16_t f16Add1, register frac16_t f16Add2, register frac16_t f16Add3, register frac16_t f16Add4)
{
    #if defined(__CC_ARM)                               /* For ARM Compiler */
        __asm volatile{add f16Add1, f16Add1, f16Add2    /* f16Add1 = f16Add1 + f16Add2 */
                       add f16Add1, f16Add1, f16Add3    /* f16Add1 = f16Add1 + f16Add3 */
                       add f16Add1, f16Add1, f16Add4};  /* f16Add1 = f16Add1 + f16Add4 */

    #else
        __asm volatile( "add %0, %0, %1 \n"             /* f16Add1 = f16Add1 + f16Add2 */
                        "add %0, %0, %2 \n"             /* f16Add1 = f16Add1 + f16Add3 */
                        "add %0, %0, %3 \n"             /* f16Add1 = f16Add1 + f16Add4 */
                        : "+l"(f16Add1): "l"(f16Add2), "l"(f16Add3), "l"(f16Add4));
    #endif

    return f16Add1;
}
#if defined(__IAR_SYSTEMS_ICC__) /* set no optimization for IAR compiler   */
    #pragma language=restore     /* Restore original optimization level */         
#elif defined(__CC_ARM)          /* set no optimization for ARM(KEIL) compiler */  
#else                            /* set no optimization for GCC(KDS) compiler */                
#endif 

/***************************************************************************//*!
*  Saturated summation of four inputs
*     f16Out = f16Add1 + f16Add2 + f16Add3 + f16Add4
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
static inline frac16_t MLIB_Add4Sat_F16_FAsmi(register frac16_t f16Add1, register frac16_t f16Add2, register frac16_t f16Add3, register frac16_t f16Add4)
{        
    #if defined(__CC_ARM)                                   /* For ARM Compiler */
        __asm volatile{ sxth f16Add1, f16Add1               /* Transforms 16-bit input f16Val to 32-bit */
                        sxth f16Add2, f16Add2               /* Transforms 16-bit input f16Val to 32-bit */
                        sxth f16Add3, f16Add3               /* Transforms 16-bit input f16Val to 32-bit */
                        sxth f16Add4, f16Add4               /* Transforms 16-bit input f16Val to 32-bit */
                        add f16Add1, f16Add1, f16Add3       /* f16Add1 + f16Add3 */
                        add f16Add2, f16Add2, f16Add4       /* f16Add2 + f16Add4 */
                        add f16Add1, f16Add1, f16Add2       /* f16Add1 + f16Add3 + f16Add2 + f16Add4 */
                        ssat f16Add1, #16, f16Add1 };       /* Saturation */
    #else
        __asm volatile( "sxth %0, %0 \n"                     /* Transforms 16-bit input f16Val to 32-bit */
                        "sxth %1, %1 \n"                     /* Transforms 16-bit input f16Val to 32-bit */
                        "sxth %2, %2 \n"                     /* Transforms 16-bit input f16Val to 32-bit */
                        "sxth %3, %3 \n"                     /* Transforms 16-bit input f16Val to 32-bit */
                        "add %0, %0, %2 \n"                  /* f16Add1 + f16Add3 */
                        "add %1, %1, %3 \n"                  /* f16Add2 + f16Add4 */
                        "add %0, %0, %1 \n"                  /* f16Add1 + f16Add3 + f16Add2 + f16Add4 */
                        "ssat %0, #16, %0 \n"                /* Saturation */
                        : "+l"(f16Add1), "+l"(f16Add2), "+l"(f16Add3), "+l"(f16Add4):);
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

#endif  /* _MLIB_ADD4_F16_ASM_H_ */
