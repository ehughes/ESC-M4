################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/FilteringFunctions/arm_biquad_cascade_df1_32x64_init_q31.c \
../src/FilteringFunctions/arm_biquad_cascade_df1_32x64_q31.c \
../src/FilteringFunctions/arm_biquad_cascade_df1_f32.c \
../src/FilteringFunctions/arm_biquad_cascade_df1_fast_q15.c \
../src/FilteringFunctions/arm_biquad_cascade_df1_fast_q31.c \
../src/FilteringFunctions/arm_biquad_cascade_df1_init_f32.c \
../src/FilteringFunctions/arm_biquad_cascade_df1_init_q15.c \
../src/FilteringFunctions/arm_biquad_cascade_df1_init_q31.c \
../src/FilteringFunctions/arm_biquad_cascade_df1_q15.c \
../src/FilteringFunctions/arm_biquad_cascade_df1_q31.c \
../src/FilteringFunctions/arm_biquad_cascade_df2T_f32.c \
../src/FilteringFunctions/arm_biquad_cascade_df2T_f64.c \
../src/FilteringFunctions/arm_biquad_cascade_df2T_init_f32.c \
../src/FilteringFunctions/arm_biquad_cascade_df2T_init_f64.c \
../src/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f32.c \
../src/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f32.c \
../src/FilteringFunctions/arm_conv_f32.c \
../src/FilteringFunctions/arm_conv_fast_opt_q15.c \
../src/FilteringFunctions/arm_conv_fast_q15.c \
../src/FilteringFunctions/arm_conv_fast_q31.c \
../src/FilteringFunctions/arm_conv_opt_q15.c \
../src/FilteringFunctions/arm_conv_opt_q7.c \
../src/FilteringFunctions/arm_conv_partial_f32.c \
../src/FilteringFunctions/arm_conv_partial_fast_opt_q15.c \
../src/FilteringFunctions/arm_conv_partial_fast_q15.c \
../src/FilteringFunctions/arm_conv_partial_fast_q31.c \
../src/FilteringFunctions/arm_conv_partial_opt_q15.c \
../src/FilteringFunctions/arm_conv_partial_opt_q7.c \
../src/FilteringFunctions/arm_conv_partial_q15.c \
../src/FilteringFunctions/arm_conv_partial_q31.c \
../src/FilteringFunctions/arm_conv_partial_q7.c \
../src/FilteringFunctions/arm_conv_q15.c \
../src/FilteringFunctions/arm_conv_q31.c \
../src/FilteringFunctions/arm_conv_q7.c \
../src/FilteringFunctions/arm_correlate_f32.c \
../src/FilteringFunctions/arm_correlate_fast_opt_q15.c \
../src/FilteringFunctions/arm_correlate_fast_q15.c \
../src/FilteringFunctions/arm_correlate_fast_q31.c \
../src/FilteringFunctions/arm_correlate_opt_q15.c \
../src/FilteringFunctions/arm_correlate_opt_q7.c \
../src/FilteringFunctions/arm_correlate_q15.c \
../src/FilteringFunctions/arm_correlate_q31.c \
../src/FilteringFunctions/arm_correlate_q7.c \
../src/FilteringFunctions/arm_fir_decimate_f32.c \
../src/FilteringFunctions/arm_fir_decimate_fast_q15.c \
../src/FilteringFunctions/arm_fir_decimate_fast_q31.c \
../src/FilteringFunctions/arm_fir_decimate_init_f32.c \
../src/FilteringFunctions/arm_fir_decimate_init_q15.c \
../src/FilteringFunctions/arm_fir_decimate_init_q31.c \
../src/FilteringFunctions/arm_fir_decimate_q15.c \
../src/FilteringFunctions/arm_fir_decimate_q31.c \
../src/FilteringFunctions/arm_fir_f32.c \
../src/FilteringFunctions/arm_fir_fast_q15.c \
../src/FilteringFunctions/arm_fir_fast_q31.c \
../src/FilteringFunctions/arm_fir_init_f32.c \
../src/FilteringFunctions/arm_fir_init_q15.c \
../src/FilteringFunctions/arm_fir_init_q31.c \
../src/FilteringFunctions/arm_fir_init_q7.c \
../src/FilteringFunctions/arm_fir_interpolate_f32.c \
../src/FilteringFunctions/arm_fir_interpolate_init_f32.c \
../src/FilteringFunctions/arm_fir_interpolate_init_q15.c \
../src/FilteringFunctions/arm_fir_interpolate_init_q31.c \
../src/FilteringFunctions/arm_fir_interpolate_q15.c \
../src/FilteringFunctions/arm_fir_interpolate_q31.c \
../src/FilteringFunctions/arm_fir_lattice_f32.c \
../src/FilteringFunctions/arm_fir_lattice_init_f32.c \
../src/FilteringFunctions/arm_fir_lattice_init_q15.c \
../src/FilteringFunctions/arm_fir_lattice_init_q31.c \
../src/FilteringFunctions/arm_fir_lattice_q15.c \
../src/FilteringFunctions/arm_fir_lattice_q31.c \
../src/FilteringFunctions/arm_fir_q15.c \
../src/FilteringFunctions/arm_fir_q31.c \
../src/FilteringFunctions/arm_fir_q7.c \
../src/FilteringFunctions/arm_fir_sparse_f32.c \
../src/FilteringFunctions/arm_fir_sparse_init_f32.c \
../src/FilteringFunctions/arm_fir_sparse_init_q15.c \
../src/FilteringFunctions/arm_fir_sparse_init_q31.c \
../src/FilteringFunctions/arm_fir_sparse_init_q7.c \
../src/FilteringFunctions/arm_fir_sparse_q15.c \
../src/FilteringFunctions/arm_fir_sparse_q31.c \
../src/FilteringFunctions/arm_fir_sparse_q7.c \
../src/FilteringFunctions/arm_iir_lattice_f32.c \
../src/FilteringFunctions/arm_iir_lattice_init_f32.c \
../src/FilteringFunctions/arm_iir_lattice_init_q15.c \
../src/FilteringFunctions/arm_iir_lattice_init_q31.c \
../src/FilteringFunctions/arm_iir_lattice_q15.c \
../src/FilteringFunctions/arm_iir_lattice_q31.c \
../src/FilteringFunctions/arm_lms_f32.c \
../src/FilteringFunctions/arm_lms_init_f32.c \
../src/FilteringFunctions/arm_lms_init_q15.c \
../src/FilteringFunctions/arm_lms_init_q31.c \
../src/FilteringFunctions/arm_lms_norm_f32.c \
../src/FilteringFunctions/arm_lms_norm_init_f32.c \
../src/FilteringFunctions/arm_lms_norm_init_q15.c \
../src/FilteringFunctions/arm_lms_norm_init_q31.c \
../src/FilteringFunctions/arm_lms_norm_q15.c \
../src/FilteringFunctions/arm_lms_norm_q31.c \
../src/FilteringFunctions/arm_lms_q15.c \
../src/FilteringFunctions/arm_lms_q31.c 

OBJS += \
./src/FilteringFunctions/arm_biquad_cascade_df1_32x64_init_q31.o \
./src/FilteringFunctions/arm_biquad_cascade_df1_32x64_q31.o \
./src/FilteringFunctions/arm_biquad_cascade_df1_f32.o \
./src/FilteringFunctions/arm_biquad_cascade_df1_fast_q15.o \
./src/FilteringFunctions/arm_biquad_cascade_df1_fast_q31.o \
./src/FilteringFunctions/arm_biquad_cascade_df1_init_f32.o \
./src/FilteringFunctions/arm_biquad_cascade_df1_init_q15.o \
./src/FilteringFunctions/arm_biquad_cascade_df1_init_q31.o \
./src/FilteringFunctions/arm_biquad_cascade_df1_q15.o \
./src/FilteringFunctions/arm_biquad_cascade_df1_q31.o \
./src/FilteringFunctions/arm_biquad_cascade_df2T_f32.o \
./src/FilteringFunctions/arm_biquad_cascade_df2T_f64.o \
./src/FilteringFunctions/arm_biquad_cascade_df2T_init_f32.o \
./src/FilteringFunctions/arm_biquad_cascade_df2T_init_f64.o \
./src/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f32.o \
./src/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f32.o \
./src/FilteringFunctions/arm_conv_f32.o \
./src/FilteringFunctions/arm_conv_fast_opt_q15.o \
./src/FilteringFunctions/arm_conv_fast_q15.o \
./src/FilteringFunctions/arm_conv_fast_q31.o \
./src/FilteringFunctions/arm_conv_opt_q15.o \
./src/FilteringFunctions/arm_conv_opt_q7.o \
./src/FilteringFunctions/arm_conv_partial_f32.o \
./src/FilteringFunctions/arm_conv_partial_fast_opt_q15.o \
./src/FilteringFunctions/arm_conv_partial_fast_q15.o \
./src/FilteringFunctions/arm_conv_partial_fast_q31.o \
./src/FilteringFunctions/arm_conv_partial_opt_q15.o \
./src/FilteringFunctions/arm_conv_partial_opt_q7.o \
./src/FilteringFunctions/arm_conv_partial_q15.o \
./src/FilteringFunctions/arm_conv_partial_q31.o \
./src/FilteringFunctions/arm_conv_partial_q7.o \
./src/FilteringFunctions/arm_conv_q15.o \
./src/FilteringFunctions/arm_conv_q31.o \
./src/FilteringFunctions/arm_conv_q7.o \
./src/FilteringFunctions/arm_correlate_f32.o \
./src/FilteringFunctions/arm_correlate_fast_opt_q15.o \
./src/FilteringFunctions/arm_correlate_fast_q15.o \
./src/FilteringFunctions/arm_correlate_fast_q31.o \
./src/FilteringFunctions/arm_correlate_opt_q15.o \
./src/FilteringFunctions/arm_correlate_opt_q7.o \
./src/FilteringFunctions/arm_correlate_q15.o \
./src/FilteringFunctions/arm_correlate_q31.o \
./src/FilteringFunctions/arm_correlate_q7.o \
./src/FilteringFunctions/arm_fir_decimate_f32.o \
./src/FilteringFunctions/arm_fir_decimate_fast_q15.o \
./src/FilteringFunctions/arm_fir_decimate_fast_q31.o \
./src/FilteringFunctions/arm_fir_decimate_init_f32.o \
./src/FilteringFunctions/arm_fir_decimate_init_q15.o \
./src/FilteringFunctions/arm_fir_decimate_init_q31.o \
./src/FilteringFunctions/arm_fir_decimate_q15.o \
./src/FilteringFunctions/arm_fir_decimate_q31.o \
./src/FilteringFunctions/arm_fir_f32.o \
./src/FilteringFunctions/arm_fir_fast_q15.o \
./src/FilteringFunctions/arm_fir_fast_q31.o \
./src/FilteringFunctions/arm_fir_init_f32.o \
./src/FilteringFunctions/arm_fir_init_q15.o \
./src/FilteringFunctions/arm_fir_init_q31.o \
./src/FilteringFunctions/arm_fir_init_q7.o \
./src/FilteringFunctions/arm_fir_interpolate_f32.o \
./src/FilteringFunctions/arm_fir_interpolate_init_f32.o \
./src/FilteringFunctions/arm_fir_interpolate_init_q15.o \
./src/FilteringFunctions/arm_fir_interpolate_init_q31.o \
./src/FilteringFunctions/arm_fir_interpolate_q15.o \
./src/FilteringFunctions/arm_fir_interpolate_q31.o \
./src/FilteringFunctions/arm_fir_lattice_f32.o \
./src/FilteringFunctions/arm_fir_lattice_init_f32.o \
./src/FilteringFunctions/arm_fir_lattice_init_q15.o \
./src/FilteringFunctions/arm_fir_lattice_init_q31.o \
./src/FilteringFunctions/arm_fir_lattice_q15.o \
./src/FilteringFunctions/arm_fir_lattice_q31.o \
./src/FilteringFunctions/arm_fir_q15.o \
./src/FilteringFunctions/arm_fir_q31.o \
./src/FilteringFunctions/arm_fir_q7.o \
./src/FilteringFunctions/arm_fir_sparse_f32.o \
./src/FilteringFunctions/arm_fir_sparse_init_f32.o \
./src/FilteringFunctions/arm_fir_sparse_init_q15.o \
./src/FilteringFunctions/arm_fir_sparse_init_q31.o \
./src/FilteringFunctions/arm_fir_sparse_init_q7.o \
./src/FilteringFunctions/arm_fir_sparse_q15.o \
./src/FilteringFunctions/arm_fir_sparse_q31.o \
./src/FilteringFunctions/arm_fir_sparse_q7.o \
./src/FilteringFunctions/arm_iir_lattice_f32.o \
./src/FilteringFunctions/arm_iir_lattice_init_f32.o \
./src/FilteringFunctions/arm_iir_lattice_init_q15.o \
./src/FilteringFunctions/arm_iir_lattice_init_q31.o \
./src/FilteringFunctions/arm_iir_lattice_q15.o \
./src/FilteringFunctions/arm_iir_lattice_q31.o \
./src/FilteringFunctions/arm_lms_f32.o \
./src/FilteringFunctions/arm_lms_init_f32.o \
./src/FilteringFunctions/arm_lms_init_q15.o \
./src/FilteringFunctions/arm_lms_init_q31.o \
./src/FilteringFunctions/arm_lms_norm_f32.o \
./src/FilteringFunctions/arm_lms_norm_init_f32.o \
./src/FilteringFunctions/arm_lms_norm_init_q15.o \
./src/FilteringFunctions/arm_lms_norm_init_q31.o \
./src/FilteringFunctions/arm_lms_norm_q15.o \
./src/FilteringFunctions/arm_lms_norm_q31.o \
./src/FilteringFunctions/arm_lms_q15.o \
./src/FilteringFunctions/arm_lms_q31.o 

C_DEPS += \
./src/FilteringFunctions/arm_biquad_cascade_df1_32x64_init_q31.d \
./src/FilteringFunctions/arm_biquad_cascade_df1_32x64_q31.d \
./src/FilteringFunctions/arm_biquad_cascade_df1_f32.d \
./src/FilteringFunctions/arm_biquad_cascade_df1_fast_q15.d \
./src/FilteringFunctions/arm_biquad_cascade_df1_fast_q31.d \
./src/FilteringFunctions/arm_biquad_cascade_df1_init_f32.d \
./src/FilteringFunctions/arm_biquad_cascade_df1_init_q15.d \
./src/FilteringFunctions/arm_biquad_cascade_df1_init_q31.d \
./src/FilteringFunctions/arm_biquad_cascade_df1_q15.d \
./src/FilteringFunctions/arm_biquad_cascade_df1_q31.d \
./src/FilteringFunctions/arm_biquad_cascade_df2T_f32.d \
./src/FilteringFunctions/arm_biquad_cascade_df2T_f64.d \
./src/FilteringFunctions/arm_biquad_cascade_df2T_init_f32.d \
./src/FilteringFunctions/arm_biquad_cascade_df2T_init_f64.d \
./src/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f32.d \
./src/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f32.d \
./src/FilteringFunctions/arm_conv_f32.d \
./src/FilteringFunctions/arm_conv_fast_opt_q15.d \
./src/FilteringFunctions/arm_conv_fast_q15.d \
./src/FilteringFunctions/arm_conv_fast_q31.d \
./src/FilteringFunctions/arm_conv_opt_q15.d \
./src/FilteringFunctions/arm_conv_opt_q7.d \
./src/FilteringFunctions/arm_conv_partial_f32.d \
./src/FilteringFunctions/arm_conv_partial_fast_opt_q15.d \
./src/FilteringFunctions/arm_conv_partial_fast_q15.d \
./src/FilteringFunctions/arm_conv_partial_fast_q31.d \
./src/FilteringFunctions/arm_conv_partial_opt_q15.d \
./src/FilteringFunctions/arm_conv_partial_opt_q7.d \
./src/FilteringFunctions/arm_conv_partial_q15.d \
./src/FilteringFunctions/arm_conv_partial_q31.d \
./src/FilteringFunctions/arm_conv_partial_q7.d \
./src/FilteringFunctions/arm_conv_q15.d \
./src/FilteringFunctions/arm_conv_q31.d \
./src/FilteringFunctions/arm_conv_q7.d \
./src/FilteringFunctions/arm_correlate_f32.d \
./src/FilteringFunctions/arm_correlate_fast_opt_q15.d \
./src/FilteringFunctions/arm_correlate_fast_q15.d \
./src/FilteringFunctions/arm_correlate_fast_q31.d \
./src/FilteringFunctions/arm_correlate_opt_q15.d \
./src/FilteringFunctions/arm_correlate_opt_q7.d \
./src/FilteringFunctions/arm_correlate_q15.d \
./src/FilteringFunctions/arm_correlate_q31.d \
./src/FilteringFunctions/arm_correlate_q7.d \
./src/FilteringFunctions/arm_fir_decimate_f32.d \
./src/FilteringFunctions/arm_fir_decimate_fast_q15.d \
./src/FilteringFunctions/arm_fir_decimate_fast_q31.d \
./src/FilteringFunctions/arm_fir_decimate_init_f32.d \
./src/FilteringFunctions/arm_fir_decimate_init_q15.d \
./src/FilteringFunctions/arm_fir_decimate_init_q31.d \
./src/FilteringFunctions/arm_fir_decimate_q15.d \
./src/FilteringFunctions/arm_fir_decimate_q31.d \
./src/FilteringFunctions/arm_fir_f32.d \
./src/FilteringFunctions/arm_fir_fast_q15.d \
./src/FilteringFunctions/arm_fir_fast_q31.d \
./src/FilteringFunctions/arm_fir_init_f32.d \
./src/FilteringFunctions/arm_fir_init_q15.d \
./src/FilteringFunctions/arm_fir_init_q31.d \
./src/FilteringFunctions/arm_fir_init_q7.d \
./src/FilteringFunctions/arm_fir_interpolate_f32.d \
./src/FilteringFunctions/arm_fir_interpolate_init_f32.d \
./src/FilteringFunctions/arm_fir_interpolate_init_q15.d \
./src/FilteringFunctions/arm_fir_interpolate_init_q31.d \
./src/FilteringFunctions/arm_fir_interpolate_q15.d \
./src/FilteringFunctions/arm_fir_interpolate_q31.d \
./src/FilteringFunctions/arm_fir_lattice_f32.d \
./src/FilteringFunctions/arm_fir_lattice_init_f32.d \
./src/FilteringFunctions/arm_fir_lattice_init_q15.d \
./src/FilteringFunctions/arm_fir_lattice_init_q31.d \
./src/FilteringFunctions/arm_fir_lattice_q15.d \
./src/FilteringFunctions/arm_fir_lattice_q31.d \
./src/FilteringFunctions/arm_fir_q15.d \
./src/FilteringFunctions/arm_fir_q31.d \
./src/FilteringFunctions/arm_fir_q7.d \
./src/FilteringFunctions/arm_fir_sparse_f32.d \
./src/FilteringFunctions/arm_fir_sparse_init_f32.d \
./src/FilteringFunctions/arm_fir_sparse_init_q15.d \
./src/FilteringFunctions/arm_fir_sparse_init_q31.d \
./src/FilteringFunctions/arm_fir_sparse_init_q7.d \
./src/FilteringFunctions/arm_fir_sparse_q15.d \
./src/FilteringFunctions/arm_fir_sparse_q31.d \
./src/FilteringFunctions/arm_fir_sparse_q7.d \
./src/FilteringFunctions/arm_iir_lattice_f32.d \
./src/FilteringFunctions/arm_iir_lattice_init_f32.d \
./src/FilteringFunctions/arm_iir_lattice_init_q15.d \
./src/FilteringFunctions/arm_iir_lattice_init_q31.d \
./src/FilteringFunctions/arm_iir_lattice_q15.d \
./src/FilteringFunctions/arm_iir_lattice_q31.d \
./src/FilteringFunctions/arm_lms_f32.d \
./src/FilteringFunctions/arm_lms_init_f32.d \
./src/FilteringFunctions/arm_lms_init_q15.d \
./src/FilteringFunctions/arm_lms_init_q31.d \
./src/FilteringFunctions/arm_lms_norm_f32.d \
./src/FilteringFunctions/arm_lms_norm_init_f32.d \
./src/FilteringFunctions/arm_lms_norm_init_q15.d \
./src/FilteringFunctions/arm_lms_norm_init_q31.d \
./src/FilteringFunctions/arm_lms_norm_q15.d \
./src/FilteringFunctions/arm_lms_norm_q31.d \
./src/FilteringFunctions/arm_lms_q15.d \
./src/FilteringFunctions/arm_lms_q31.d 


# Each subdirectory must supply rules for building sources it contributes
src/FilteringFunctions/%.o: ../src/FilteringFunctions/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -D__FPU_PRESENT=1 -DARM_MATH_ROUNDING -DARM_MATH_CM4 -D__MULTICORE_NONE -DDEBUG -D__CODE_RED -DCORE_M4 -D__GENERIC_M4__ -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\COMMON\CMSIS_DSP_4_5_0\inc" -O2 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fsingle-precision-constant -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -mthumb -D__REDLIB__ -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


