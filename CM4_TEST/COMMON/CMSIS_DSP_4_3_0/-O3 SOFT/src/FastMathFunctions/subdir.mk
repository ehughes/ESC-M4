################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/FastMathFunctions/arm_cos_f32.c \
../src/FastMathFunctions/arm_cos_q15.c \
../src/FastMathFunctions/arm_cos_q31.c \
../src/FastMathFunctions/arm_sin_f32.c \
../src/FastMathFunctions/arm_sin_q15.c \
../src/FastMathFunctions/arm_sin_q31.c \
../src/FastMathFunctions/arm_sqrt_q15.c \
../src/FastMathFunctions/arm_sqrt_q31.c 

OBJS += \
./src/FastMathFunctions/arm_cos_f32.o \
./src/FastMathFunctions/arm_cos_q15.o \
./src/FastMathFunctions/arm_cos_q31.o \
./src/FastMathFunctions/arm_sin_f32.o \
./src/FastMathFunctions/arm_sin_q15.o \
./src/FastMathFunctions/arm_sin_q31.o \
./src/FastMathFunctions/arm_sqrt_q15.o \
./src/FastMathFunctions/arm_sqrt_q31.o 

C_DEPS += \
./src/FastMathFunctions/arm_cos_f32.d \
./src/FastMathFunctions/arm_cos_q15.d \
./src/FastMathFunctions/arm_cos_q31.d \
./src/FastMathFunctions/arm_sin_f32.d \
./src/FastMathFunctions/arm_sin_q15.d \
./src/FastMathFunctions/arm_sin_q31.d \
./src/FastMathFunctions/arm_sqrt_q15.d \
./src/FastMathFunctions/arm_sqrt_q31.d 


# Each subdirectory must supply rules for building sources it contributes
src/FastMathFunctions/%.o: ../src/FastMathFunctions/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -D__FPU_PRESENT=1 -DARM_MATH_ROUNDING -DARM_MATH_CM4 -D__MULTICORE_NONE -DDEBUG -D__CODE_RED -DCORE_M4 -D__GENERIC_M4__ -I"C:\Users\emh203\Dropbox\Embedded System Conference\CM4_TEST\COMMON\CMSIS_DSP_4_3_0\inc" -O3 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fsingle-precision-constant -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -mthumb -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


