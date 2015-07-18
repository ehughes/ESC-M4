/*
===============================================================================
 Name        : CM4_TEST.c
 Author      : $(author)
 Version     :
 Copyright   : $(copyright)
 Description : main definition
===============================================================================
*/

#if defined (__USE_LPCOPEN)
#if defined(NO_BOARD_LIB)
#include "chip.h"
#else
#include "board.h"
#endif
#endif

#include <cr_section_macros.h>
#include "arm_math.h"
#include "stdlib.h"
#include "arm_const_structs.h"
#include "..\Common\IIR.h"


//These symbols are to select the different datatypes to operate on.
//When using the LPC4370,  I could not fit all 3 configurations at one time
//so I have these to enable/disable different pieces.

//#define _f32
//#define _q31
#define _q15

#define ENABLE_FFT
#define MAX_INPUT_SIZE	4096

#define INIT_CYCLE_TIMER					Chip_TIMER_Init(LPC_TIMER0);Chip_TIMER_Reset(LPC_TIMER0);LPC_TIMER0->TCR = 0; //Stop The Timer
#define START_CYCLE_TIMER					Chip_TIMER_Reset(LPC_TIMER0);LPC_TIMER0->TCR = 1; //Start The Timer
#define STOP_AND_GRAB_CYCLE_TIMER(x)	   	LPC_TIMER0->TCR = 0; x = LPC_TIMER0->TC 		  //Stop The Timer
#define REPORT_CYCLE_TIMER			   		LPC_TIMER0->TCR = 0; CycleTimer = LPC_TIMER0->TC;printf("%i",CycleTimer - CycleOffset)
#define TAB									printf("\t");


#if BUILD_CONFIG == 0

#define OPT_LEVEL "-O0"

#elif BUILD_CONFIG == 1

#define OPT_LEVEL "-O1"

#elif BUILD_CONFIG == 2

	#define OPT_LEVEL "-O2"

#elif BUILD_CONFIG == 3

	#define OPT_LEVEL "-O3"

#elif BUILD_CONFIG == 4

	#define OPT_LEVEL "-Og"

#elif BUILD_CONFIG == 5

	#define OPT_LEVEL "-Os"

#else

	#error "Unknown BUILD_CONFIG"

#endif


#if ABI == 0

	#define ABI_TYPE "SoftABI"

#else

	#define ABI_TYPE "HardABI"

#endif

#if BOARD == 0

	#define CPU_NAME "LPC4337"

#else

	#define CPU_NAME "LPC4370"

#endif

__BSS(RAM3) union
{
	 q15_t 		q15[MAX_INPUT_SIZE];
	 q31_t 		q31[MAX_INPUT_SIZE];
	 float32_t	f32[MAX_INPUT_SIZE];
} InputData;

__BSS(RAM4) union
{
	 q15_t 		q15[MAX_INPUT_SIZE];
	 q31_t 		q31[MAX_INPUT_SIZE];
	 float32_t	f32[MAX_INPUT_SIZE];
} OutputData;

__BSS(RAM3) union
{
	arm_biquad_casd_df1_inst_f32 		 f32_df1;
	arm_biquad_cascade_df2T_instance_f32 f32_df2T;
	arm_biquad_casd_df1_inst_q15		 q15_df1;
	arm_biquad_casd_df1_inst_q31		 q31_df1;
	arm_biquad_cas_df1_32x64_ins_q31     q31_64_df1;

} IIR_Inst;

__BSS(RAM3) union
{
	arm_fir_instance_f32			f32;
	arm_fir_instance_q31			q31;
	arm_fir_instance_q15			q15;

} FIR_Inst;


__BSS(RAM3) union
{
	arm_pid_instance_f32	f32;
	arm_pid_instance_q31	q31;
	arm_pid_instance_q15	q15;
}PID_Inst;

q31_t_IIR E_IIR;

float32_t IIR_Coef_f32 [5] = {0.1,0.2,0.3,-0.4,-0.4};
float32_t IIR_State_f32 [4] = {0,0,0,0};
q31_t IIR_Coef_q31 [5] = {0.1*0x7FFFFFFF,0.2*0x7FFFFFFF,0.3*0x7FFFFFFF,-0.4*0x7FFFFFFF,-0.4*0x7FFFFFFF};
q31_t IIR_State_q31 [4] = {0,0,0,0};
q63_t IIR_State_q63 [4] = {0,0,0,0};
q15_t IIR_Coef_q15 [5] = {0.1*0x7FFF,0.2*0x7FFF,0.3*0x7FFF,-0.4*0x7FFF,-0.4*0x7FFF};
q15_t IIR_State_q15 [4] = {0,0,0,0};


__BSS(RAM5) union
		{
			float32_t f32[2048+32];
			q31_t	  q31[2048+32];
			q15_t	  q15[2048+32];
		}FIR_State;


float32_t	FIR_Coef_f32[32];
q31_t		FIR_Coef_q31[32];
q15_t   	FIR_Coef_q15[32];



int main(void)
{
     int i = 0 ;
     volatile float r=1;
     uint32_t CycleTimer = 0;
     uint32_t CycleOffset = 0;

	#if defined (__USE_LPCOPEN)
			#if !defined(NO_BOARD_LIB)
				// Read clock settings and update SystemCoreClock variable
				SystemCoreClockUpdate();
				// Set up and initialize all required blocks and
				// functions related to the board hardware
				Board_Init();
				// Set the LED to the state of "On"
				Board_LED_Set(0, true);
			#endif
		#endif



 	 fpuInit();



     for(i=0;i<32;i++)
     {
    	 FIR_Coef_f32[i] = (float32_t)i/32;
    	 FIR_Coef_q31[i] = i<<26;
    	 FIR_Coef_q15[i] = i<<10;
     }





	INIT_CYCLE_TIMER;

    for(i=0;i<MAX_INPUT_SIZE;i++)
    {
    	InputData.q31[i] = rand();
    }

    printf("Cortex M4 Performance Test.\n");
    printf("GCC Version: %d.%d.%d\n",__GNUC__,__GNUC_MINOR__,__GNUC_PATCHLEVEL__);
    printf("%s %s %s\n",CPU_NAME,OPT_LEVEL,ABI_TYPE);


   	START_CYCLE_TIMER;
   	STOP_AND_GRAB_CYCLE_TIMER(CycleOffset);
   	printf("Cycle Offset: %d\n",CycleOffset);

   	/***
   	 *      ____  _      ____   _____ _  __  _____  _____   ____   _____ ______  _____ _____ _____ _   _  _____
   	 *     |  _ \| |    / __ \ / ____| |/ / |  __ \|  __ \ / __ \ / ____|  ____|/ ____/ ____|_   _| \ | |/ ____|
   	 *     | |_) | |   | |  | | |    | ' /  | |__) | |__) | |  | | |    | |__  | (___| (___   | | |  \| | |  __
   	 *     |  _ <| |   | |  | | |    |  <   |  ___/|  _  /| |  | | |    |  __|  \___ \\___ \  | | | . ` | | |_ |
   	 *     | |_) | |___| |__| | |____| . \  | |    | | \ \| |__| | |____| |____ ____) |___) |_| |_| |\  | |__| |
   	 *     |____/|______\____/ \_____|_|\_\ |_|    |_|  \_\\____/ \_____|______|_____/_____/|_____|_| \_|\_____|
   	 *
   	 *
   	 */

   	printf("\rBlock Processing Functions\r",CycleOffset);

   	printf("Length\t16\t32\t64\t128\t256\t512\t1024\t2048\t4096");

	   /***
	    *       __ ____ ___
	    *      / _|___ \__ \
	    *     | |_  __) | ) |
	    *     |  _||__ < / /
	    *     | |  ___) / /_
	    *     |_| |____/____|
	    *
	    *
	    */

		#ifdef _f32

			#ifdef ENABLE_FFT

					printf("\n");
					printf("\nCFFT-f32-BitReverse\t");
					START_CYCLE_TIMER; 	arm_cfft_f32(&arm_cfft_sR_f32_len16,   &InputData.f32[0], 0, 1);REPORT_CYCLE_TIMER;TAB;
					START_CYCLE_TIMER;arm_cfft_f32(&arm_cfft_sR_f32_len32,   &InputData.f32[0], 0, 1);REPORT_CYCLE_TIMER;TAB;
					START_CYCLE_TIMER;arm_cfft_f32(&arm_cfft_sR_f32_len64,   &InputData.f32[0], 0, 1);REPORT_CYCLE_TIMER;TAB;
					START_CYCLE_TIMER;arm_cfft_f32(&arm_cfft_sR_f32_len128,  &InputData.f32[0], 0, 1);REPORT_CYCLE_TIMER;TAB;
					START_CYCLE_TIMER;arm_cfft_f32(&arm_cfft_sR_f32_len256,  &InputData.f32[0], 0, 1);REPORT_CYCLE_TIMER;TAB;
					START_CYCLE_TIMER;arm_cfft_f32(&arm_cfft_sR_f32_len512,  &InputData.f32[0], 0, 1);REPORT_CYCLE_TIMER;TAB;
					START_CYCLE_TIMER;arm_cfft_f32(&arm_cfft_sR_f32_len1024, &InputData.f32[0], 0, 1);REPORT_CYCLE_TIMER;TAB;
					START_CYCLE_TIMER;arm_cfft_f32(&arm_cfft_sR_f32_len2048, &InputData.f32[0], 0, 1);REPORT_CYCLE_TIMER;TAB;
					START_CYCLE_TIMER;arm_cfft_f32(&arm_cfft_sR_f32_len4096, &InputData.f32[0], 0, 1);REPORT_CYCLE_TIMER;TAB;

					printf("\n");
					printf("CFFT-f32-NoBitReverse\t");
					START_CYCLE_TIMER;arm_cfft_f32(&arm_cfft_sR_f32_len16,   &InputData.f32[0], 0, 0);REPORT_CYCLE_TIMER;TAB;
					START_CYCLE_TIMER;arm_cfft_f32(&arm_cfft_sR_f32_len32,   &InputData.f32[0], 0, 0);REPORT_CYCLE_TIMER;TAB;
					START_CYCLE_TIMER;arm_cfft_f32(&arm_cfft_sR_f32_len64,   &InputData.f32[0], 0, 0);REPORT_CYCLE_TIMER;TAB;
					START_CYCLE_TIMER;arm_cfft_f32(&arm_cfft_sR_f32_len128,  &InputData.f32[0], 0, 0);REPORT_CYCLE_TIMER;TAB;
					START_CYCLE_TIMER;arm_cfft_f32(&arm_cfft_sR_f32_len256,  &InputData.f32[0], 0, 0);REPORT_CYCLE_TIMER;TAB;
					START_CYCLE_TIMER;arm_cfft_f32(&arm_cfft_sR_f32_len512,  &InputData.f32[0], 0, 0);REPORT_CYCLE_TIMER;TAB;
					START_CYCLE_TIMER;arm_cfft_f32(&arm_cfft_sR_f32_len1024, &InputData.f32[0], 0, 0);REPORT_CYCLE_TIMER;TAB;
					START_CYCLE_TIMER;arm_cfft_f32(&arm_cfft_sR_f32_len2048, &InputData.f32[0], 0, 0);REPORT_CYCLE_TIMER;TAB;
					START_CYCLE_TIMER;arm_cfft_f32(&arm_cfft_sR_f32_len4096, &InputData.f32[0], 0, 0);REPORT_CYCLE_TIMER;TAB;

					printf("\n");
					printf("ComplexMag-f32\t");
					START_CYCLE_TIMER;arm_cmplx_mag_f32(&InputData.f32[0],&OutputData.f32[0],16);REPORT_CYCLE_TIMER;TAB;
					START_CYCLE_TIMER;arm_cmplx_mag_f32(&InputData.f32[0],&OutputData.f32[0],32);REPORT_CYCLE_TIMER;TAB;
					START_CYCLE_TIMER;arm_cmplx_mag_f32(&InputData.f32[0],&OutputData.f32[0],64);REPORT_CYCLE_TIMER;TAB;
					START_CYCLE_TIMER;arm_cmplx_mag_f32(&InputData.f32[0],&OutputData.f32[0],128);REPORT_CYCLE_TIMER;TAB;
					START_CYCLE_TIMER;arm_cmplx_mag_f32(&InputData.f32[0],&OutputData.f32[0],256);REPORT_CYCLE_TIMER;TAB;
					START_CYCLE_TIMER;arm_cmplx_mag_f32(&InputData.f32[0],&OutputData.f32[0],512);REPORT_CYCLE_TIMER;TAB;
					START_CYCLE_TIMER;arm_cmplx_mag_f32(&InputData.f32[0],&OutputData.f32[0],1024);REPORT_CYCLE_TIMER;TAB;
					START_CYCLE_TIMER;arm_cmplx_mag_f32(&InputData.f32[0],&OutputData.f32[0],2048);REPORT_CYCLE_TIMER;TAB;
					START_CYCLE_TIMER;arm_cmplx_mag_f32(&InputData.f32[0],&OutputData.f32[0],4096);REPORT_CYCLE_TIMER;TAB;

					printf("\n");
					printf("ComplexMagSquared-f32\t");
					START_CYCLE_TIMER;arm_cmplx_mag_squared_f32(&InputData.f32[0],&OutputData.f32[0],16);REPORT_CYCLE_TIMER;TAB;
					START_CYCLE_TIMER;arm_cmplx_mag_squared_f32(&InputData.f32[0],&OutputData.f32[0],32);REPORT_CYCLE_TIMER;TAB;
					START_CYCLE_TIMER;arm_cmplx_mag_squared_f32(&InputData.f32[0],&OutputData.f32[0],64);REPORT_CYCLE_TIMER;TAB;
					START_CYCLE_TIMER;arm_cmplx_mag_squared_f32(&InputData.f32[0],&OutputData.f32[0],128);REPORT_CYCLE_TIMER;TAB;
					START_CYCLE_TIMER;arm_cmplx_mag_squared_f32(&InputData.f32[0],&OutputData.f32[0],256);REPORT_CYCLE_TIMER;TAB;
					START_CYCLE_TIMER;arm_cmplx_mag_squared_f32(&InputData.f32[0],&OutputData.f32[0],512);REPORT_CYCLE_TIMER;TAB;
					START_CYCLE_TIMER;arm_cmplx_mag_squared_f32(&InputData.f32[0],&OutputData.f32[0],1024);REPORT_CYCLE_TIMER;TAB;
					START_CYCLE_TIMER;arm_cmplx_mag_squared_f32(&InputData.f32[0],&OutputData.f32[0],2048);REPORT_CYCLE_TIMER;TAB;
					START_CYCLE_TIMER;arm_cmplx_mag_squared_f32(&InputData.f32[0],&OutputData.f32[0],4096);REPORT_CYCLE_TIMER;TAB;
			#endif

     	printf("\n");
      	printf("IIR-f32_df1-1Stage\t");

      	arm_biquad_cascade_df1_init_f32(&IIR_Inst.f32_df1,1,&IIR_Coef_f32[0],&IIR_State_f32[0]);

      	START_CYCLE_TIMER;arm_biquad_cascade_df1_f32(&IIR_Inst.f32_df1,&InputData.f32[0],&OutputData.f32[0],16);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_biquad_cascade_df1_f32(&IIR_Inst.f32_df1,&InputData.f32[0],&OutputData.f32[0],32);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_biquad_cascade_df1_f32(&IIR_Inst.f32_df1,&InputData.f32[0],&OutputData.f32[0],64);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_biquad_cascade_df1_f32(&IIR_Inst.f32_df1,&InputData.f32[0],&OutputData.f32[0],128);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_biquad_cascade_df1_f32(&IIR_Inst.f32_df1,&InputData.f32[0],&OutputData.f32[0],256);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_biquad_cascade_df1_f32(&IIR_Inst.f32_df1,&InputData.f32[0],&OutputData.f32[0],512);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_biquad_cascade_df1_f32(&IIR_Inst.f32_df1,&InputData.f32[0],&OutputData.f32[0],1024);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_biquad_cascade_df1_f32(&IIR_Inst.f32_df1,&InputData.f32[0],&OutputData.f32[0],2048);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_biquad_cascade_df1_f32(&IIR_Inst.f32_df1,&InputData.f32[0],&OutputData.f32[0],4096);REPORT_CYCLE_TIMER;TAB;

    	printf("\n");
        printf("IIR-f32_df2T-1Stage\t");

      	arm_biquad_cascade_df2T_init_f32(&IIR_Inst.f32_df2T,1,&IIR_Coef_f32[0],&IIR_State_f32[0]);

      	START_CYCLE_TIMER;arm_biquad_cascade_df2T_f32(&IIR_Inst.f32_df2T,&InputData.f32[0],&OutputData.f32[0],16);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_biquad_cascade_df2T_f32(&IIR_Inst.f32_df2T,&InputData.f32[0],&OutputData.f32[0],32);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_biquad_cascade_df2T_f32(&IIR_Inst.f32_df2T,&InputData.f32[0],&OutputData.f32[0],64);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_biquad_cascade_df2T_f32(&IIR_Inst.f32_df2T,&InputData.f32[0],&OutputData.f32[0],128);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_biquad_cascade_df2T_f32(&IIR_Inst.f32_df2T,&InputData.f32[0],&OutputData.f32[0],256);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_biquad_cascade_df2T_f32(&IIR_Inst.f32_df2T,&InputData.f32[0],&OutputData.f32[0],512);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_biquad_cascade_df2T_f32(&IIR_Inst.f32_df2T,&InputData.f32[0],&OutputData.f32[0],1024);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_biquad_cascade_df2T_f32(&IIR_Inst.f32_df2T,&InputData.f32[0],&OutputData.f32[0],2048);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_biquad_cascade_df2T_f32(&IIR_Inst.f32_df2T,&InputData.f32[0],&OutputData.f32[0],4096);REPORT_CYCLE_TIMER;TAB;


    	printf("\n");
        printf("FIR-f32_8tap\t");
    	arm_fir_init_f32(&FIR_Inst.f32,8,&FIR_Coef_f32[0],&FIR_State.f32[0],2048);
    	START_CYCLE_TIMER;arm_fir_f32(&FIR_Inst.f32,&InputData.f32[0],&OutputData.f32[0],16);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_fir_f32(&FIR_Inst.f32,&InputData.f32[0],&OutputData.f32[0],32);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_fir_f32(&FIR_Inst.f32,&InputData.f32[0],&OutputData.f32[0],64);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_fir_f32(&FIR_Inst.f32,&InputData.f32[0],&OutputData.f32[0],128);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_fir_f32(&FIR_Inst.f32,&InputData.f32[0],&OutputData.f32[0],256);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_fir_f32(&FIR_Inst.f32,&InputData.f32[0],&OutputData.f32[0],512);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_fir_f32(&FIR_Inst.f32,&InputData.f32[0],&OutputData.f32[0],1024);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_fir_f32(&FIR_Inst.f32,&InputData.f32[0],&OutputData.f32[0],2048);REPORT_CYCLE_TIMER;TAB;
    	printf("n/a"); // Not enough memory to do the 4096 case

    	printf("\n");
        printf("FIR-f32_16tap\t");

    	arm_fir_init_f32(&FIR_Inst.f32,16,&FIR_Coef_f32[0],&FIR_State.f32[0],2048);
    	START_CYCLE_TIMER;arm_fir_f32(&FIR_Inst.f32,&InputData.f32[0],&OutputData.f32[0],16);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_fir_f32(&FIR_Inst.f32,&InputData.f32[0],&OutputData.f32[0],32);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_fir_f32(&FIR_Inst.f32,&InputData.f32[0],&OutputData.f32[0],64);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_fir_f32(&FIR_Inst.f32,&InputData.f32[0],&OutputData.f32[0],128);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_fir_f32(&FIR_Inst.f32,&InputData.f32[0],&OutputData.f32[0],256);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_fir_f32(&FIR_Inst.f32,&InputData.f32[0],&OutputData.f32[0],512);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_fir_f32(&FIR_Inst.f32,&InputData.f32[0],&OutputData.f32[0],1024);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_fir_f32(&FIR_Inst.f32,&InputData.f32[0],&OutputData.f32[0],2048);REPORT_CYCLE_TIMER;TAB;
    	printf("n/a"); // Not enough memory to do the 4096 case

    	printf("\n");
    	printf("FIR-f32_32tap\t");

    	arm_fir_init_f32(&FIR_Inst.f32,32,&FIR_Coef_f32[0],&FIR_State.f32[0],2048);
    	START_CYCLE_TIMER;arm_fir_f32(&FIR_Inst.f32,&InputData.f32[0],&OutputData.f32[0],16);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_fir_f32(&FIR_Inst.f32,&InputData.f32[0],&OutputData.f32[0],32);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_fir_f32(&FIR_Inst.f32,&InputData.f32[0],&OutputData.f32[0],64);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_fir_f32(&FIR_Inst.f32,&InputData.f32[0],&OutputData.f32[0],128);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_fir_f32(&FIR_Inst.f32,&InputData.f32[0],&OutputData.f32[0],256);REPORT_CYCLE_TIMER;TAB;
        START_CYCLE_TIMER;arm_fir_f32(&FIR_Inst.f32,&InputData.f32[0],&OutputData.f32[0],512);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_fir_f32(&FIR_Inst.f32,&InputData.f32[0],&OutputData.f32[0],1024);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_fir_f32(&FIR_Inst.f32,&InputData.f32[0],&OutputData.f32[0],2048);REPORT_CYCLE_TIMER;TAB;
    	printf("n/a"); // Not enough memory to do the 4096 case

      	#endif

    	/***
    	 *            ____  __
    	 *           |___ \/_ |
    	 *       __ _  __) || |
    	 *      / _` ||__ < | |
    	 *     | (_| |___) || |
    	 *      \__, |____/ |_|
    	 *         | |
    	 *         |_|
    	 */

		#ifdef _q31
     	printf("\n");
    	printf("CFFT-q31-BitReverse\t");
		START_CYCLE_TIMER;arm_cfft_q31(&arm_cfft_sR_q31_len16,   &InputData.q31[0], 0, 1);REPORT_CYCLE_TIMER;TAB;
     	START_CYCLE_TIMER;arm_cfft_q31(&arm_cfft_sR_q31_len32,   &InputData.q31[0], 0, 1);REPORT_CYCLE_TIMER;TAB;
     	START_CYCLE_TIMER;arm_cfft_q31(&arm_cfft_sR_q31_len64,   &InputData.q31[0], 0, 1);REPORT_CYCLE_TIMER;TAB;
     	START_CYCLE_TIMER;arm_cfft_q31(&arm_cfft_sR_q31_len128,  &InputData.q31[0], 0, 1);REPORT_CYCLE_TIMER;TAB;
      	START_CYCLE_TIMER;arm_cfft_q31(&arm_cfft_sR_q31_len256,  &InputData.q31[0], 0, 1);REPORT_CYCLE_TIMER;TAB;
       	START_CYCLE_TIMER;arm_cfft_q31(&arm_cfft_sR_q31_len512,  &InputData.q31[0], 0, 1);REPORT_CYCLE_TIMER;TAB;
       	START_CYCLE_TIMER;arm_cfft_q31(&arm_cfft_sR_q31_len1024, &InputData.q31[0], 0, 1);REPORT_CYCLE_TIMER;TAB;
       	START_CYCLE_TIMER;arm_cfft_q31(&arm_cfft_sR_q31_len2048, &InputData.q31[0], 0, 1);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_cfft_q31(&arm_cfft_sR_q31_len4096, &InputData.q31[0], 0, 1);REPORT_CYCLE_TIMER;TAB;

       	printf("\n");
      	printf("CFFT-q31-NoBitReverse\t");
      	START_CYCLE_TIMER;arm_cfft_q31(&arm_cfft_sR_q31_len16,   &InputData.q31[0], 0, 0);REPORT_CYCLE_TIMER;TAB;
        START_CYCLE_TIMER;arm_cfft_q31(&arm_cfft_sR_q31_len32,   &InputData.q31[0], 0, 0);REPORT_CYCLE_TIMER;TAB;
        START_CYCLE_TIMER;arm_cfft_q31(&arm_cfft_sR_q31_len64,   &InputData.q31[0], 0, 0);REPORT_CYCLE_TIMER;TAB;
        START_CYCLE_TIMER;arm_cfft_q31(&arm_cfft_sR_q31_len128,  &InputData.q31[0], 0, 0);REPORT_CYCLE_TIMER;TAB;
        START_CYCLE_TIMER;arm_cfft_q31(&arm_cfft_sR_q31_len256,  &InputData.q31[0], 0, 0);REPORT_CYCLE_TIMER;TAB;
       	START_CYCLE_TIMER;arm_cfft_q31(&arm_cfft_sR_q31_len512,  &InputData.q31[0], 0, 0);REPORT_CYCLE_TIMER;TAB;
        START_CYCLE_TIMER;arm_cfft_q31(&arm_cfft_sR_q31_len1024, &InputData.q31[0], 0, 0);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_cfft_q31(&arm_cfft_sR_q31_len2048, &InputData.q31[0], 0, 0);REPORT_CYCLE_TIMER;TAB;
        START_CYCLE_TIMER;arm_cfft_q31(&arm_cfft_sR_q31_len4096, &InputData.q31[0], 0, 0);REPORT_CYCLE_TIMER;TAB;

    	printf("\n");
        printf("ComplexMag-q31\t");
    	START_CYCLE_TIMER;arm_cmplx_mag_q31(&InputData.q31[0],&OutputData.q31[0],16);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_cmplx_mag_q31(&InputData.q31[0],&OutputData.q31[0],32);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_cmplx_mag_q31(&InputData.q31[0],&OutputData.q31[0],64);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_cmplx_mag_q31(&InputData.q31[0],&OutputData.q31[0],128);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_cmplx_mag_q31(&InputData.q31[0],&OutputData.q31[0],256);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_cmplx_mag_q31(&InputData.q31[0],&OutputData.q31[0],512);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_cmplx_mag_q31(&InputData.q31[0],&OutputData.q31[0],1024);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_cmplx_mag_q31(&InputData.q31[0],&OutputData.q31[0],2048);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_cmplx_mag_q31(&InputData.q31[0],&OutputData.q31[0],4096);REPORT_CYCLE_TIMER;TAB;

    	printf("\n");
        printf("ComplexMagSquared-q31\t");
    	START_CYCLE_TIMER;arm_cmplx_mag_squared_q31(&InputData.q31[0],&OutputData.q31[0],16);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_cmplx_mag_squared_q31(&InputData.q31[0],&OutputData.q31[0],32);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_cmplx_mag_squared_q31(&InputData.q31[0],&OutputData.q31[0],64);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_cmplx_mag_squared_q31(&InputData.q31[0],&OutputData.q31[0],128);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_cmplx_mag_squared_q31(&InputData.q31[0],&OutputData.q31[0],256);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_cmplx_mag_squared_q31(&InputData.q31[0],&OutputData.q31[0],512);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_cmplx_mag_squared_q31(&InputData.q31[0],&OutputData.q31[0],1024);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_cmplx_mag_squared_q31(&InputData.q31[0],&OutputData.q31[0],2048);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_cmplx_mag_squared_q31(&InputData.q31[0],&OutputData.q31[0],4096);REPORT_CYCLE_TIMER;TAB;



		printf("\n");
      	printf("IIR-q31_df1-1Stage\t");

      	arm_biquad_cascade_df1_init_q31(&IIR_Inst.q31_df1,1,&IIR_Coef_q31[0],&IIR_State_q31[0],1);

      	START_CYCLE_TIMER;arm_biquad_cascade_df1_q31(&IIR_Inst.q31_df1,&InputData.q31[0],&OutputData.q31[0],16);REPORT_CYCLE_TIMER;TAB;
      	START_CYCLE_TIMER;arm_biquad_cascade_df1_q31(&IIR_Inst.q31_df1,&InputData.q31[0],&OutputData.q31[0],32);REPORT_CYCLE_TIMER;TAB;
      	START_CYCLE_TIMER;arm_biquad_cascade_df1_q31(&IIR_Inst.q31_df1,&InputData.q31[0],&OutputData.q31[0],64);REPORT_CYCLE_TIMER;TAB;
      	START_CYCLE_TIMER;arm_biquad_cascade_df1_q31(&IIR_Inst.q31_df1,&InputData.q31[0],&OutputData.q31[0],128);REPORT_CYCLE_TIMER;TAB;
      	START_CYCLE_TIMER;arm_biquad_cascade_df1_q31(&IIR_Inst.q31_df1,&InputData.q31[0],&OutputData.q31[0],256);REPORT_CYCLE_TIMER;TAB;
      	START_CYCLE_TIMER;arm_biquad_cascade_df1_q31(&IIR_Inst.q31_df1,&InputData.q31[0],&OutputData.q31[0],512);REPORT_CYCLE_TIMER;TAB;
      	START_CYCLE_TIMER;arm_biquad_cascade_df1_q31(&IIR_Inst.q31_df1,&InputData.q31[0],&OutputData.q31[0],1024);REPORT_CYCLE_TIMER;TAB;
      	START_CYCLE_TIMER;arm_biquad_cascade_df1_q31(&IIR_Inst.q31_df1,&InputData.q31[0],&OutputData.q31[0],2048);REPORT_CYCLE_TIMER;TAB;
      	START_CYCLE_TIMER;arm_biquad_cascade_df1_q31(&IIR_Inst.q31_df1,&InputData.q31[0],&OutputData.q31[0],4096);REPORT_CYCLE_TIMER;TAB;


		printf("\n");
      	printf("IIR-q31_df1-1Stage-fast\t");

      	arm_biquad_cascade_df1_init_q31(&IIR_Inst.q31_df1,1,&IIR_Coef_q31[0],&IIR_State_q31[0],1);

    	START_CYCLE_TIMER;arm_biquad_cascade_df1_fast_q31(&IIR_Inst.q31_df1,&InputData.q31[0],&OutputData.q31[0],16);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_biquad_cascade_df1_fast_q31(&IIR_Inst.q31_df1,&InputData.q31[0],&OutputData.q31[0],32);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_biquad_cascade_df1_fast_q31(&IIR_Inst.q31_df1,&InputData.q31[0],&OutputData.q31[0],64);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_biquad_cascade_df1_fast_q31(&IIR_Inst.q31_df1,&InputData.q31[0],&OutputData.q31[0],128);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_biquad_cascade_df1_fast_q31(&IIR_Inst.q31_df1,&InputData.q31[0],&OutputData.q31[0],256);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_biquad_cascade_df1_fast_q31(&IIR_Inst.q31_df1,&InputData.q31[0],&OutputData.q31[0],512);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_biquad_cascade_df1_fast_q31(&IIR_Inst.q31_df1,&InputData.q31[0],&OutputData.q31[0],1024);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_biquad_cascade_df1_fast_q31(&IIR_Inst.q31_df1,&InputData.q31[0],&OutputData.q31[0],2048);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_biquad_cascade_df1_fast_q31(&IIR_Inst.q31_df1,&InputData.q31[0],&OutputData.q31[0],4096);REPORT_CYCLE_TIMER;TAB;

    	printf("\n");
        printf("IIR-q31_64_df1-1Staget\t");
        arm_biquad_cas_df1_32x64_init_q31(&IIR_Inst.q31_64_df1,1,&IIR_Coef_q31[0],&IIR_State_q63[0],1);
       	START_CYCLE_TIMER;arm_biquad_cas_df1_32x64_q31(&IIR_Inst.q31_64_df1,&InputData.q31[0],&OutputData.q31[0],16);REPORT_CYCLE_TIMER;TAB;

       	START_CYCLE_TIMER;arm_biquad_cas_df1_32x64_q31(&IIR_Inst.q31_64_df1,&InputData.q31[0],&OutputData.q31[0],32);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_biquad_cas_df1_32x64_q31(&IIR_Inst.q31_64_df1,&InputData.q31[0],&OutputData.q31[0],64);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_biquad_cas_df1_32x64_q31(&IIR_Inst.q31_64_df1,&InputData.q31[0],&OutputData.q31[0],128);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_biquad_cas_df1_32x64_q31(&IIR_Inst.q31_64_df1,&InputData.q31[0],&OutputData.q31[0],256);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_biquad_cas_df1_32x64_q31(&IIR_Inst.q31_64_df1,&InputData.q31[0],&OutputData.q31[0],512);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_biquad_cas_df1_32x64_q31(&IIR_Inst.q31_64_df1,&InputData.q31[0],&OutputData.q31[0],1024);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_biquad_cas_df1_32x64_q31(&IIR_Inst.q31_64_df1,&InputData.q31[0],&OutputData.q31[0],2048);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_biquad_cas_df1_32x64_q31(&IIR_Inst.q31_64_df1,&InputData.q31[0],&OutputData.q31[0],4096);REPORT_CYCLE_TIMER;TAB;


    	printf("\n");
    	        printf("FIR-q31_8tap\t");
    	    	arm_fir_init_q31(&FIR_Inst.q31,8,&FIR_Coef_q31[0],&FIR_State.q31[0],2048);
    	    	START_CYCLE_TIMER;arm_fir_q31(&FIR_Inst.q31,&InputData.q31[0],&OutputData.q31[0],16);REPORT_CYCLE_TIMER;TAB;
    	    	START_CYCLE_TIMER;arm_fir_q31(&FIR_Inst.q31,&InputData.q31[0],&OutputData.q31[0],32);REPORT_CYCLE_TIMER;TAB;
    	    	START_CYCLE_TIMER;arm_fir_q31(&FIR_Inst.q31,&InputData.q31[0],&OutputData.q31[0],64);REPORT_CYCLE_TIMER;TAB;
    	    	START_CYCLE_TIMER;arm_fir_q31(&FIR_Inst.q31,&InputData.q31[0],&OutputData.q31[0],128);REPORT_CYCLE_TIMER;TAB;
    	    	START_CYCLE_TIMER;arm_fir_q31(&FIR_Inst.q31,&InputData.q31[0],&OutputData.q31[0],256);REPORT_CYCLE_TIMER;TAB;
    	    	START_CYCLE_TIMER;arm_fir_q31(&FIR_Inst.q31,&InputData.q31[0],&OutputData.q31[0],512);REPORT_CYCLE_TIMER;TAB;
    	    	START_CYCLE_TIMER;arm_fir_q31(&FIR_Inst.q31,&InputData.q31[0],&OutputData.q31[0],1024);REPORT_CYCLE_TIMER;TAB;
    	    	START_CYCLE_TIMER;arm_fir_q31(&FIR_Inst.q31,&InputData.q31[0],&OutputData.q31[0],2048);REPORT_CYCLE_TIMER;TAB;
    	    	printf("n/a"); // Not enough memory to do the 4096 case

    	    	printf("\n");
    	        printf("FIR-q31_16tap\t");

    	    	arm_fir_init_q31(&FIR_Inst.q31,16,&FIR_Coef_q31[0],&FIR_State.q31[0],2048);
    	    	START_CYCLE_TIMER;arm_fir_q31(&FIR_Inst.q31,&InputData.q31[0],&OutputData.q31[0],16);REPORT_CYCLE_TIMER;TAB;
    	    	START_CYCLE_TIMER;arm_fir_q31(&FIR_Inst.q31,&InputData.q31[0],&OutputData.q31[0],32);REPORT_CYCLE_TIMER;TAB;
    	    	START_CYCLE_TIMER;arm_fir_q31(&FIR_Inst.q31,&InputData.q31[0],&OutputData.q31[0],64);REPORT_CYCLE_TIMER;TAB;
    	    	START_CYCLE_TIMER;arm_fir_q31(&FIR_Inst.q31,&InputData.q31[0],&OutputData.q31[0],128);REPORT_CYCLE_TIMER;TAB;
    	    	START_CYCLE_TIMER;arm_fir_q31(&FIR_Inst.q31,&InputData.q31[0],&OutputData.q31[0],256);REPORT_CYCLE_TIMER;TAB;
    	    	START_CYCLE_TIMER;arm_fir_q31(&FIR_Inst.q31,&InputData.q31[0],&OutputData.q31[0],512);REPORT_CYCLE_TIMER;TAB;
    	    	START_CYCLE_TIMER;arm_fir_q31(&FIR_Inst.q31,&InputData.q31[0],&OutputData.q31[0],1024);REPORT_CYCLE_TIMER;TAB;
    	    	START_CYCLE_TIMER;arm_fir_q31(&FIR_Inst.q31,&InputData.q31[0],&OutputData.q31[0],2048);REPORT_CYCLE_TIMER;TAB;
    	    	printf("n/a"); // Not enough memory to do the 4096 case

    	    	printf("\n");
    	    	printf("FIR-q31_32tap\t");

    	    	arm_fir_init_q31(&FIR_Inst.q31,32,&FIR_Coef_q31[0],&FIR_State.q31[0],2048);
    	    	START_CYCLE_TIMER;arm_fir_q31(&FIR_Inst.q31,&InputData.q31[0],&OutputData.q31[0],16);REPORT_CYCLE_TIMER;TAB;
    	    	START_CYCLE_TIMER;arm_fir_q31(&FIR_Inst.q31,&InputData.q31[0],&OutputData.q31[0],32);REPORT_CYCLE_TIMER;TAB;
    	    	START_CYCLE_TIMER;arm_fir_q31(&FIR_Inst.q31,&InputData.q31[0],&OutputData.q31[0],64);REPORT_CYCLE_TIMER;TAB;
    	    	START_CYCLE_TIMER;arm_fir_q31(&FIR_Inst.q31,&InputData.q31[0],&OutputData.q31[0],128);REPORT_CYCLE_TIMER;TAB;
    	    	START_CYCLE_TIMER;arm_fir_q31(&FIR_Inst.q31,&InputData.q31[0],&OutputData.q31[0],256);REPORT_CYCLE_TIMER;TAB;
    	        START_CYCLE_TIMER;arm_fir_q31(&FIR_Inst.q31,&InputData.q31[0],&OutputData.q31[0],512);REPORT_CYCLE_TIMER;TAB;
    	    	START_CYCLE_TIMER;arm_fir_q31(&FIR_Inst.q31,&InputData.q31[0],&OutputData.q31[0],1024);REPORT_CYCLE_TIMER;TAB;
    	    	START_CYCLE_TIMER;arm_fir_q31(&FIR_Inst.q31,&InputData.q31[0],&OutputData.q31[0],2048);REPORT_CYCLE_TIMER;TAB;
    	    	printf("n/a"); // Not enough memory to do the 4096 case

		#endif

    	/***
    	 *           __ _____
    	 *          /_ | ____|
    	 *       __ _| | |__
    	 *      / _` | |___ \
    	 *     | (_| | |___) |
    	 *      \__, |_|____/
    	 *         | |
    	 *         |_|
    	 */

		#ifdef _q15
    	printf("\n");
    	printf("CFFT-q15-BitReverse\t");
		START_CYCLE_TIMER;arm_cfft_q15(&arm_cfft_sR_q15_len16,   &InputData.q15[0], 0, 1);REPORT_CYCLE_TIMER;TAB;
     	START_CYCLE_TIMER;arm_cfft_q15(&arm_cfft_sR_q15_len32,   &InputData.q15[0], 0, 1);REPORT_CYCLE_TIMER;TAB;
     	START_CYCLE_TIMER;arm_cfft_q15(&arm_cfft_sR_q15_len64,   &InputData.q15[0], 0, 1);REPORT_CYCLE_TIMER;TAB;
     	START_CYCLE_TIMER;arm_cfft_q15(&arm_cfft_sR_q15_len128,  &InputData.q15[0], 0, 1);REPORT_CYCLE_TIMER;TAB;
      	START_CYCLE_TIMER;arm_cfft_q15(&arm_cfft_sR_q15_len256,  &InputData.q15[0], 0, 1);REPORT_CYCLE_TIMER;TAB;
       	START_CYCLE_TIMER;arm_cfft_q15(&arm_cfft_sR_q15_len512,  &InputData.q15[0], 0, 1);REPORT_CYCLE_TIMER;TAB;
       	START_CYCLE_TIMER;arm_cfft_q15(&arm_cfft_sR_q15_len1024, &InputData.q15[0], 0, 1);REPORT_CYCLE_TIMER;TAB;
		START_CYCLE_TIMER;arm_cfft_q15(&arm_cfft_sR_q15_len2048, &InputData.q15[0], 0, 1);REPORT_CYCLE_TIMER;TAB;
    	START_CYCLE_TIMER;arm_cfft_q31(&arm_cfft_sR_q31_len4096, &InputData.q31[0], 0, 1);REPORT_CYCLE_TIMER;TAB;

       	printf("\n");
        printf("CFFT-q15-NoBitReverse\t");
    	START_CYCLE_TIMER;arm_cfft_q15(&arm_cfft_sR_q15_len16,   &InputData.q15[0], 0, 0);REPORT_CYCLE_TIMER;TAB;
           	START_CYCLE_TIMER;arm_cfft_q15(&arm_cfft_sR_q15_len32,   &InputData.q15[0], 0, 0);REPORT_CYCLE_TIMER;TAB;
           	START_CYCLE_TIMER;arm_cfft_q15(&arm_cfft_sR_q15_len64,   &InputData.q15[0], 0, 0);REPORT_CYCLE_TIMER;TAB;
           	START_CYCLE_TIMER;arm_cfft_q15(&arm_cfft_sR_q15_len128,  &InputData.q15[0], 0, 0);REPORT_CYCLE_TIMER;TAB;
            START_CYCLE_TIMER;arm_cfft_q15(&arm_cfft_sR_q15_len256,  &InputData.q15[0], 0, 0);REPORT_CYCLE_TIMER;TAB;
           	START_CYCLE_TIMER;arm_cfft_q15(&arm_cfft_sR_q15_len512,  &InputData.q15[0], 0, 0);REPORT_CYCLE_TIMER;TAB;
           	START_CYCLE_TIMER;arm_cfft_q15(&arm_cfft_sR_q15_len1024, &InputData.q15[0], 0, 0);REPORT_CYCLE_TIMER;TAB;
         	START_CYCLE_TIMER;arm_cfft_q15(&arm_cfft_sR_q15_len2048, &InputData.q15[0], 0, 0);REPORT_CYCLE_TIMER;TAB;
           	START_CYCLE_TIMER;arm_cfft_q31(&arm_cfft_sR_q31_len4096, &InputData.q31[0], 0, 0);REPORT_CYCLE_TIMER;TAB;

        	printf("\n");
            printf("ComplexMag-q15\t");
        	START_CYCLE_TIMER;arm_cmplx_mag_q15(&InputData.q15[0],&OutputData.q15[0],16);REPORT_CYCLE_TIMER;TAB;
        	START_CYCLE_TIMER;arm_cmplx_mag_q15(&InputData.q15[0],&OutputData.q15[0],32);REPORT_CYCLE_TIMER;TAB;
        	START_CYCLE_TIMER;arm_cmplx_mag_q15(&InputData.q15[0],&OutputData.q15[0],64);REPORT_CYCLE_TIMER;TAB;
        	START_CYCLE_TIMER;arm_cmplx_mag_q15(&InputData.q15[0],&OutputData.q15[0],128);REPORT_CYCLE_TIMER;TAB;
        	START_CYCLE_TIMER;arm_cmplx_mag_q15(&InputData.q15[0],&OutputData.q15[0],256);REPORT_CYCLE_TIMER;TAB;
        	START_CYCLE_TIMER;arm_cmplx_mag_q15(&InputData.q15[0],&OutputData.q15[0],512);REPORT_CYCLE_TIMER;TAB;
        	START_CYCLE_TIMER;arm_cmplx_mag_q15(&InputData.q15[0],&OutputData.q15[0],1024);REPORT_CYCLE_TIMER;TAB;
        	START_CYCLE_TIMER;arm_cmplx_mag_q15(&InputData.q15[0],&OutputData.q15[0],2048);REPORT_CYCLE_TIMER;TAB;
        	START_CYCLE_TIMER;arm_cmplx_mag_q15(&InputData.q15[0],&OutputData.q15[0],4096);REPORT_CYCLE_TIMER;TAB;

        	printf("\n");
            printf("ComplexMagSquared-q15\t");
        	START_CYCLE_TIMER;arm_cmplx_mag_squared_q15(&InputData.q15[0],&OutputData.q15[0],16);REPORT_CYCLE_TIMER;TAB;
        	START_CYCLE_TIMER;arm_cmplx_mag_squared_q15(&InputData.q15[0],&OutputData.q15[0],32);REPORT_CYCLE_TIMER;TAB;
        	START_CYCLE_TIMER;arm_cmplx_mag_squared_q15(&InputData.q15[0],&OutputData.q15[0],64);REPORT_CYCLE_TIMER;TAB;
        	START_CYCLE_TIMER;arm_cmplx_mag_squared_q15(&InputData.q15[0],&OutputData.q15[0],128);REPORT_CYCLE_TIMER;TAB;
        	START_CYCLE_TIMER;arm_cmplx_mag_squared_q15(&InputData.q15[0],&OutputData.q15[0],256);REPORT_CYCLE_TIMER;TAB;
        	START_CYCLE_TIMER;arm_cmplx_mag_squared_q15(&InputData.q15[0],&OutputData.q15[0],512);REPORT_CYCLE_TIMER;TAB;
        	START_CYCLE_TIMER;arm_cmplx_mag_squared_q15(&InputData.q15[0],&OutputData.q15[0],1024);REPORT_CYCLE_TIMER;TAB;
        	START_CYCLE_TIMER;arm_cmplx_mag_squared_q15(&InputData.q15[0],&OutputData.q15[0],2048);REPORT_CYCLE_TIMER;TAB;
        	START_CYCLE_TIMER;arm_cmplx_mag_squared_q15(&InputData.q15[0],&OutputData.q15[0],4096);REPORT_CYCLE_TIMER;TAB;


    		printf("\n");
          	printf("IIR-q15_df1-1Stage\t");

          	arm_biquad_cascade_df1_init_q15(&IIR_Inst.q15_df1,1,&IIR_Coef_q15[0],&IIR_State_q15[0],1);

          	START_CYCLE_TIMER;arm_biquad_cascade_df1_q15(&IIR_Inst.q15_df1,&InputData.q15[0],&OutputData.q15[0],16);REPORT_CYCLE_TIMER;TAB;
          	START_CYCLE_TIMER;arm_biquad_cascade_df1_q15(&IIR_Inst.q15_df1,&InputData.q15[0],&OutputData.q15[0],32);REPORT_CYCLE_TIMER;TAB;
          	START_CYCLE_TIMER;arm_biquad_cascade_df1_q15(&IIR_Inst.q15_df1,&InputData.q15[0],&OutputData.q15[0],64);REPORT_CYCLE_TIMER;TAB;
          	START_CYCLE_TIMER;arm_biquad_cascade_df1_q15(&IIR_Inst.q15_df1,&InputData.q15[0],&OutputData.q15[0],128);REPORT_CYCLE_TIMER;TAB;
          	START_CYCLE_TIMER;arm_biquad_cascade_df1_q15(&IIR_Inst.q15_df1,&InputData.q15[0],&OutputData.q15[0],256);REPORT_CYCLE_TIMER;TAB;
          	START_CYCLE_TIMER;arm_biquad_cascade_df1_q15(&IIR_Inst.q15_df1,&InputData.q15[0],&OutputData.q15[0],512);REPORT_CYCLE_TIMER;TAB;
          	START_CYCLE_TIMER;arm_biquad_cascade_df1_q15(&IIR_Inst.q15_df1,&InputData.q15[0],&OutputData.q15[0],1024);REPORT_CYCLE_TIMER;TAB;
          	START_CYCLE_TIMER;arm_biquad_cascade_df1_q15(&IIR_Inst.q15_df1,&InputData.q15[0],&OutputData.q15[0],2048);REPORT_CYCLE_TIMER;TAB;
          	START_CYCLE_TIMER;arm_biquad_cascade_df1_q15(&IIR_Inst.q15_df1,&InputData.q15[0],&OutputData.q15[0],4096);REPORT_CYCLE_TIMER;TAB;


    		printf("\n");
          	printf("IIR-q15_df1-1Stage-fast\t");

          	arm_biquad_cascade_df1_init_q15(&IIR_Inst.q15_df1,1,&IIR_Coef_q15[0],&IIR_State_q15[0],1);

        	START_CYCLE_TIMER;arm_biquad_cascade_df1_fast_q15(&IIR_Inst.q15_df1,&InputData.q15[0],&OutputData.q15[0],16);REPORT_CYCLE_TIMER;TAB;
        	START_CYCLE_TIMER;arm_biquad_cascade_df1_fast_q15(&IIR_Inst.q15_df1,&InputData.q15[0],&OutputData.q15[0],32);REPORT_CYCLE_TIMER;TAB;
        	START_CYCLE_TIMER;arm_biquad_cascade_df1_fast_q15(&IIR_Inst.q15_df1,&InputData.q15[0],&OutputData.q15[0],64);REPORT_CYCLE_TIMER;TAB;
        	START_CYCLE_TIMER;arm_biquad_cascade_df1_fast_q15(&IIR_Inst.q15_df1,&InputData.q15[0],&OutputData.q15[0],128);REPORT_CYCLE_TIMER;TAB;
        	START_CYCLE_TIMER;arm_biquad_cascade_df1_fast_q15(&IIR_Inst.q15_df1,&InputData.q15[0],&OutputData.q15[0],256);REPORT_CYCLE_TIMER;TAB;
        	START_CYCLE_TIMER;arm_biquad_cascade_df1_fast_q15(&IIR_Inst.q15_df1,&InputData.q15[0],&OutputData.q15[0],512);REPORT_CYCLE_TIMER;TAB;
        	START_CYCLE_TIMER;arm_biquad_cascade_df1_fast_q15(&IIR_Inst.q15_df1,&InputData.q15[0],&OutputData.q15[0],1024);REPORT_CYCLE_TIMER;TAB;
        	START_CYCLE_TIMER;arm_biquad_cascade_df1_fast_q15(&IIR_Inst.q15_df1,&InputData.q15[0],&OutputData.q15[0],2048);REPORT_CYCLE_TIMER;TAB;
        	START_CYCLE_TIMER;arm_biquad_cascade_df1_fast_q15(&IIR_Inst.q15_df1,&InputData.q15[0],&OutputData.q15[0],4096);REPORT_CYCLE_TIMER;TAB;

        	printf("\n");
        	        printf("FIR-q15_8tap\t");
        	    	arm_fir_init_q15(&FIR_Inst.q15,8,&FIR_Coef_q15[0],&FIR_State.q15[0],2048);
        	    	START_CYCLE_TIMER;arm_fir_q15(&FIR_Inst.q15,&InputData.q15[0],&OutputData.q15[0],16);REPORT_CYCLE_TIMER;TAB;
        	    	START_CYCLE_TIMER;arm_fir_q15(&FIR_Inst.q15,&InputData.q15[0],&OutputData.q15[0],32);REPORT_CYCLE_TIMER;TAB;
        	    	START_CYCLE_TIMER;arm_fir_q15(&FIR_Inst.q15,&InputData.q15[0],&OutputData.q15[0],64);REPORT_CYCLE_TIMER;TAB;
        	    	START_CYCLE_TIMER;arm_fir_q15(&FIR_Inst.q15,&InputData.q15[0],&OutputData.q15[0],128);REPORT_CYCLE_TIMER;TAB;
        	    	START_CYCLE_TIMER;arm_fir_q15(&FIR_Inst.q15,&InputData.q15[0],&OutputData.q15[0],256);REPORT_CYCLE_TIMER;TAB;
        	    	START_CYCLE_TIMER;arm_fir_q15(&FIR_Inst.q15,&InputData.q15[0],&OutputData.q15[0],512);REPORT_CYCLE_TIMER;TAB;
        	    	START_CYCLE_TIMER;arm_fir_q15(&FIR_Inst.q15,&InputData.q15[0],&OutputData.q15[0],1024);REPORT_CYCLE_TIMER;TAB;
        	    	START_CYCLE_TIMER;arm_fir_q15(&FIR_Inst.q15,&InputData.q15[0],&OutputData.q15[0],2048);REPORT_CYCLE_TIMER;TAB;
        	    	printf("n/a"); // Not enough memory to do the 4096 case

        	    	printf("\n");
        	        printf("FIR-q15_16tap\t");

        	    	arm_fir_init_q15(&FIR_Inst.q15,16,&FIR_Coef_q15[0],&FIR_State.q15[0],2048);
        	    	START_CYCLE_TIMER;arm_fir_q15(&FIR_Inst.q15,&InputData.q15[0],&OutputData.q15[0],16);REPORT_CYCLE_TIMER;TAB;
        	    	START_CYCLE_TIMER;arm_fir_q15(&FIR_Inst.q15,&InputData.q15[0],&OutputData.q15[0],32);REPORT_CYCLE_TIMER;TAB;
        	    	START_CYCLE_TIMER;arm_fir_q15(&FIR_Inst.q15,&InputData.q15[0],&OutputData.q15[0],64);REPORT_CYCLE_TIMER;TAB;
        	    	START_CYCLE_TIMER;arm_fir_q15(&FIR_Inst.q15,&InputData.q15[0],&OutputData.q15[0],128);REPORT_CYCLE_TIMER;TAB;
        	    	START_CYCLE_TIMER;arm_fir_q15(&FIR_Inst.q15,&InputData.q15[0],&OutputData.q15[0],256);REPORT_CYCLE_TIMER;TAB;
        	    	START_CYCLE_TIMER;arm_fir_q15(&FIR_Inst.q15,&InputData.q15[0],&OutputData.q15[0],512);REPORT_CYCLE_TIMER;TAB;
        	    	START_CYCLE_TIMER;arm_fir_q15(&FIR_Inst.q15,&InputData.q15[0],&OutputData.q15[0],1024);REPORT_CYCLE_TIMER;TAB;
        	    	START_CYCLE_TIMER;arm_fir_q15(&FIR_Inst.q15,&InputData.q15[0],&OutputData.q15[0],2048);REPORT_CYCLE_TIMER;TAB;
        	    	printf("n/a"); // Not enough memory to do the 4096 case

        	    	printf("\n");
        	    	printf("FIR-q15_32tap\t");

        	    	arm_fir_init_q15(&FIR_Inst.q15,32,&FIR_Coef_q15[0],&FIR_State.q15[0],2048);
        	    	START_CYCLE_TIMER;arm_fir_q15(&FIR_Inst.q15,&InputData.q15[0],&OutputData.q15[0],16);REPORT_CYCLE_TIMER;TAB;
        	    	START_CYCLE_TIMER;arm_fir_q15(&FIR_Inst.q15,&InputData.q15[0],&OutputData.q15[0],32);REPORT_CYCLE_TIMER;TAB;
        	    	START_CYCLE_TIMER;arm_fir_q15(&FIR_Inst.q15,&InputData.q15[0],&OutputData.q15[0],64);REPORT_CYCLE_TIMER;TAB;
        	    	START_CYCLE_TIMER;arm_fir_q15(&FIR_Inst.q15,&InputData.q15[0],&OutputData.q15[0],128);REPORT_CYCLE_TIMER;TAB;
        	    	START_CYCLE_TIMER;arm_fir_q15(&FIR_Inst.q15,&InputData.q15[0],&OutputData.q15[0],256);REPORT_CYCLE_TIMER;TAB;
        	        START_CYCLE_TIMER;arm_fir_q15(&FIR_Inst.q15,&InputData.q15[0],&OutputData.q15[0],512);REPORT_CYCLE_TIMER;TAB;
        	    	START_CYCLE_TIMER;arm_fir_q15(&FIR_Inst.q15,&InputData.q15[0],&OutputData.q15[0],1024);REPORT_CYCLE_TIMER;TAB;
        	    	START_CYCLE_TIMER;arm_fir_q15(&FIR_Inst.q15,&InputData.q15[0],&OutputData.q15[0],2048);REPORT_CYCLE_TIMER;TAB;
        	    	printf("n/a"); // Not enough memory to do the 4096 case


		#endif



        	/***
        	 *      _____  ______ _____     _____         __  __ _____  _      ______
        	 *     |  __ \|  ____|  __ \   / ____|  /\   |  \/  |  __ \| |    |  ____|
        	 *     | |__) | |__  | |__) | | (___   /  \  | \  / | |__) | |    | |__
        	 *     |  ___/|  __| |  _  /   \___ \ / /\ \ | |\/| |  ___/| |    |  __|
        	 *     | |    | |____| | \ \   ____) / ____ \| |  | | |    | |____| |____
        	 *     |_|    |______|_|  \_\ |_____/_/    \_\_|  |_|_|    |______|______|
        	 *
        	 *
        	 */

      	printf("\r\rSample by Sample Tests");

        printf("\rIteration\t0\t1\t2\t3\t4\t5\t6\t7\r");

		#ifdef _f32

    	printf("\n");
       	printf("PID-f32\t");

        PID_Inst.f32.Kp = 0.5;
        PID_Inst.f32.Ki = 0.1;
        PID_Inst.f32.Kd = 0.05;
        arm_pid_init_f32(&PID_Inst.f32,1);

        for(i=0;i<8;i++)
        {
        	START_CYCLE_TIMER;r=arm_pid_f32(&PID_Inst.f32,InputData.f32[i]);REPORT_CYCLE_TIMER;TAB;
        	r*=2;//To Get rid of the warning
        }

		#endif

		#ifdef _q31

    	printf("\n");
       	printf("PID-q31\t");

        PID_Inst.q31.Kp = (q31_t)(0.5 * 0x7fffffff);
        PID_Inst.q31.Ki = (q31_t)(0.1 * 0x7fffffff);
        PID_Inst.q31.Kd = (q31_t)(0.05 * 0x7fffffff);
        arm_pid_init_q31(&PID_Inst.q31,1);

        for(i=0;i<8;i++)
        {
        	START_CYCLE_TIMER;r=arm_pid_q31(&PID_Inst.q31,InputData.q31[i]);REPORT_CYCLE_TIMER;TAB;
        	r*=2;//To Get rid of the warning
        }

        printf("\n");
        printf("IIR-q31_64_df1-1Stage\t");
        arm_biquad_cas_df1_32x64_init_q31(&IIR_Inst.q31_64_df1,1,&IIR_Coef_q31[0],&IIR_State_q63[0],1);

        for(i=0;i<8;i++)
        {
        	START_CYCLE_TIMER;arm_biquad_cas_df1_32x64_q31(&IIR_Inst.q31_64_df1,&InputData.q31[0],&OutputData.q31[0],1);REPORT_CYCLE_TIMER;TAB;
        }

        printf("\n");
        printf("E-IIR-q31_64_df1-1Stage\t");

       	E_IIR.Coef.PostShift = 1;
       	E_IIR.Coef.a[0] = -0.4;
       	E_IIR.Coef.a[1] = -0.4;
       	E_IIR.Coef.b[0] = -0.1;
       	E_IIR.Coef.b[1] = -0.2;
       	E_IIR.Coef.b[2] = -0.3;
       	Init_q31_t_IIR(&E_IIR);

       	for(i=0;i<8;i++)
       	{
       		START_CYCLE_TIMER;Compute_q31_t_IIR(&E_IIR,InputData.q31[0],&OutputData.q31[0]);REPORT_CYCLE_TIMER;TAB;
       	}

		#endif


		#ifdef _q15

    	printf("\n");
       	printf("PID-q15\t");

        PID_Inst.q15.Kp = (q31_t)(0.5 * 0x7fff);
        PID_Inst.q15.Ki = (q31_t)(0.1 * 0x7fff);
        PID_Inst.q15.Kd = (q31_t)(0.05 * 0x7fff);
        arm_pid_init_q15(&PID_Inst.q15,1);

        for(i=0;i<8;i++)
        {
        	START_CYCLE_TIMER;r=arm_pid_q15(&PID_Inst.q15,InputData.q15[i]);REPORT_CYCLE_TIMER;TAB;
        	r*=2;//To Get rid of the warning
        }

		#endif


        printf("\n");



    while(1)
    {

    }
}