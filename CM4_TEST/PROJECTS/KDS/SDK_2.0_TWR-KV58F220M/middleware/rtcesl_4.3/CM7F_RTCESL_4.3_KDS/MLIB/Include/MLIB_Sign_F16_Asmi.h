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
* @brief  Sign
* 
*******************************************************************************/
#ifndef _MLIB_SIGN_F16_ASM_H_
#define _MLIB_SIGN_F16_ASM_H_

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
#define MLIB_Sign_F16_Asmi(f16Val) MLIB_Sign_F16_FAsmi(f16Val)

/***************************************************************************//*!
*     This function returns the sign of the argument:
*            f16Val = 0: returns 0
*            f16Val > 0: returns 32767 (fractional 1.0)
*            f16Val < 0: returns -32768 (fractional -1.0)
*
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
static inline frac16_t MLIB_Sign_F16_FAsmi(register frac16_t f16Val)
{
    #if defined(__CC_ARM)                           /* For ARM Compiler */
        __asm volatile{ lsl f16Val, f16Val, #16     /* f16Val << 16 */
                        ssat f16Val, #16, f16Val }; /* Saturates to 16-bit value */
    #else
        __asm volatile( "lsl %0, %0, #16 \n"        /* f16Val << 16 */
                        "ssat %0, #16, %0 \n"       /* Saturates to 16-bit value */
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

#endif  /* _MLIB_SIGN_F16_ASM_H_ */
