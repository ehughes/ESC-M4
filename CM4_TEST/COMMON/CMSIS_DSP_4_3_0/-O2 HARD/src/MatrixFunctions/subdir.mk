################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/MatrixFunctions/arm_mat_add_f32.c \
../src/MatrixFunctions/arm_mat_add_q15.c \
../src/MatrixFunctions/arm_mat_add_q31.c \
../src/MatrixFunctions/arm_mat_cmplx_mult_f32.c \
../src/MatrixFunctions/arm_mat_cmplx_mult_q15.c \
../src/MatrixFunctions/arm_mat_cmplx_mult_q31.c \
../src/MatrixFunctions/arm_mat_init_f32.c \
../src/MatrixFunctions/arm_mat_init_q15.c \
../src/MatrixFunctions/arm_mat_init_q31.c \
../src/MatrixFunctions/arm_mat_inverse_f32.c \
../src/MatrixFunctions/arm_mat_inverse_f64.c \
../src/MatrixFunctions/arm_mat_mult_f32.c \
../src/MatrixFunctions/arm_mat_mult_fast_q15.c \
../src/MatrixFunctions/arm_mat_mult_fast_q31.c \
../src/MatrixFunctions/arm_mat_mult_q15.c \
../src/MatrixFunctions/arm_mat_mult_q31.c \
../src/MatrixFunctions/arm_mat_scale_f32.c \
../src/MatrixFunctions/arm_mat_scale_q15.c \
../src/MatrixFunctions/arm_mat_scale_q31.c \
../src/MatrixFunctions/arm_mat_sub_f32.c \
../src/MatrixFunctions/arm_mat_sub_q15.c \
../src/MatrixFunctions/arm_mat_sub_q31.c \
../src/MatrixFunctions/arm_mat_trans_f32.c \
../src/MatrixFunctions/arm_mat_trans_q15.c \
../src/MatrixFunctions/arm_mat_trans_q31.c 

OBJS += \
./src/MatrixFunctions/arm_mat_add_f32.o \
./src/MatrixFunctions/arm_mat_add_q15.o \
./src/MatrixFunctions/arm_mat_add_q31.o \
./src/MatrixFunctions/arm_mat_cmplx_mult_f32.o \
./src/MatrixFunctions/arm_mat_cmplx_mult_q15.o \
./src/MatrixFunctions/arm_mat_cmplx_mult_q31.o \
./src/MatrixFunctions/arm_mat_init_f32.o \
./src/MatrixFunctions/arm_mat_init_q15.o \
./src/MatrixFunctions/arm_mat_init_q31.o \
./src/MatrixFunctions/arm_mat_inverse_f32.o \
./src/MatrixFunctions/arm_mat_inverse_f64.o \
./src/MatrixFunctions/arm_mat_mult_f32.o \
./src/MatrixFunctions/arm_mat_mult_fast_q15.o \
./src/MatrixFunctions/arm_mat_mult_fast_q31.o \
./src/MatrixFunctions/arm_mat_mult_q15.o \
./src/MatrixFunctions/arm_mat_mult_q31.o \
./src/MatrixFunctions/arm_mat_scale_f32.o \
./src/MatrixFunctions/arm_mat_scale_q15.o \
./src/MatrixFunctions/arm_mat_scale_q31.o \
./src/MatrixFunctions/arm_mat_sub_f32.o \
./src/MatrixFunctions/arm_mat_sub_q15.o \
./src/MatrixFunctions/arm_mat_sub_q31.o \
./src/MatrixFunctions/arm_mat_trans_f32.o \
./src/MatrixFunctions/arm_mat_trans_q15.o \
./src/MatrixFunctions/arm_mat_trans_q31.o 

C_DEPS += \
./src/MatrixFunctions/arm_mat_add_f32.d \
./src/MatrixFunctions/arm_mat_add_q15.d \
./src/MatrixFunctions/arm_mat_add_q31.d \
./src/MatrixFunctions/arm_mat_cmplx_mult_f32.d \
./src/MatrixFunctions/arm_mat_cmplx_mult_q15.d \
./src/MatrixFunctions/arm_mat_cmplx_mult_q31.d \
./src/MatrixFunctions/arm_mat_init_f32.d \
./src/MatrixFunctions/arm_mat_init_q15.d \
./src/MatrixFunctions/arm_mat_init_q31.d \
./src/MatrixFunctions/arm_mat_inverse_f32.d \
./src/MatrixFunctions/arm_mat_inverse_f64.d \
./src/MatrixFunctions/arm_mat_mult_f32.d \
./src/MatrixFunctions/arm_mat_mult_fast_q15.d \
./src/MatrixFunctions/arm_mat_mult_fast_q31.d \
./src/MatrixFunctions/arm_mat_mult_q15.d \
./src/MatrixFunctions/arm_mat_mult_q31.d \
./src/MatrixFunctions/arm_mat_scale_f32.d \
./src/MatrixFunctions/arm_mat_scale_q15.d \
./src/MatrixFunctions/arm_mat_scale_q31.d \
./src/MatrixFunctions/arm_mat_sub_f32.d \
./src/MatrixFunctions/arm_mat_sub_q15.d \
./src/MatrixFunctions/arm_mat_sub_q31.d \
./src/MatrixFunctions/arm_mat_trans_f32.d \
./src/MatrixFunctions/arm_mat_trans_q15.d \
./src/MatrixFunctions/arm_mat_trans_q31.d 


# Each subdirectory must supply rules for building sources it contributes
src/MatrixFunctions/%.o: ../src/MatrixFunctions/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -D__FPU_PRESENT=1 -DARM_MATH_ROUNDING -DARM_MATH_CM4 -D__MULTICORE_NONE -DDEBUG -D__CODE_RED -DCORE_M4 -D__GENERIC_M4__ -I"C:\Users\emh203\Dropbox\Embedded System Conference\CM4_TEST\COMMON\CMSIS_DSP_4_3_0\inc" -O2 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fsingle-precision-constant -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


