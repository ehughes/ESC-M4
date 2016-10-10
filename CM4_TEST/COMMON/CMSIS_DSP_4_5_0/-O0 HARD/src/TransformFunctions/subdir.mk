################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/TransformFunctions/arm_bitreversal.c \
../src/TransformFunctions/arm_cfft_f32.c \
../src/TransformFunctions/arm_cfft_q15.c \
../src/TransformFunctions/arm_cfft_q31.c \
../src/TransformFunctions/arm_cfft_radix2_f32.c \
../src/TransformFunctions/arm_cfft_radix2_init_f32.c \
../src/TransformFunctions/arm_cfft_radix2_init_q15.c \
../src/TransformFunctions/arm_cfft_radix2_init_q31.c \
../src/TransformFunctions/arm_cfft_radix2_q15.c \
../src/TransformFunctions/arm_cfft_radix2_q31.c \
../src/TransformFunctions/arm_cfft_radix4_f32.c \
../src/TransformFunctions/arm_cfft_radix4_init_f32.c \
../src/TransformFunctions/arm_cfft_radix4_init_q15.c \
../src/TransformFunctions/arm_cfft_radix4_init_q31.c \
../src/TransformFunctions/arm_cfft_radix4_q15.c \
../src/TransformFunctions/arm_cfft_radix4_q31.c \
../src/TransformFunctions/arm_cfft_radix8_f32.c \
../src/TransformFunctions/arm_dct4_f32.c \
../src/TransformFunctions/arm_dct4_init_f32.c \
../src/TransformFunctions/arm_dct4_init_q15.c \
../src/TransformFunctions/arm_dct4_init_q31.c \
../src/TransformFunctions/arm_dct4_q15.c \
../src/TransformFunctions/arm_dct4_q31.c \
../src/TransformFunctions/arm_rfft_f32.c \
../src/TransformFunctions/arm_rfft_fast_f32.c \
../src/TransformFunctions/arm_rfft_fast_init_f32.c \
../src/TransformFunctions/arm_rfft_init_f32.c \
../src/TransformFunctions/arm_rfft_init_q15.c \
../src/TransformFunctions/arm_rfft_init_q31.c \
../src/TransformFunctions/arm_rfft_q15.c \
../src/TransformFunctions/arm_rfft_q31.c 

S_UPPER_SRCS += \
../src/TransformFunctions/arm_bitreversal2.S 

OBJS += \
./src/TransformFunctions/arm_bitreversal.o \
./src/TransformFunctions/arm_bitreversal2.o \
./src/TransformFunctions/arm_cfft_f32.o \
./src/TransformFunctions/arm_cfft_q15.o \
./src/TransformFunctions/arm_cfft_q31.o \
./src/TransformFunctions/arm_cfft_radix2_f32.o \
./src/TransformFunctions/arm_cfft_radix2_init_f32.o \
./src/TransformFunctions/arm_cfft_radix2_init_q15.o \
./src/TransformFunctions/arm_cfft_radix2_init_q31.o \
./src/TransformFunctions/arm_cfft_radix2_q15.o \
./src/TransformFunctions/arm_cfft_radix2_q31.o \
./src/TransformFunctions/arm_cfft_radix4_f32.o \
./src/TransformFunctions/arm_cfft_radix4_init_f32.o \
./src/TransformFunctions/arm_cfft_radix4_init_q15.o \
./src/TransformFunctions/arm_cfft_radix4_init_q31.o \
./src/TransformFunctions/arm_cfft_radix4_q15.o \
./src/TransformFunctions/arm_cfft_radix4_q31.o \
./src/TransformFunctions/arm_cfft_radix8_f32.o \
./src/TransformFunctions/arm_dct4_f32.o \
./src/TransformFunctions/arm_dct4_init_f32.o \
./src/TransformFunctions/arm_dct4_init_q15.o \
./src/TransformFunctions/arm_dct4_init_q31.o \
./src/TransformFunctions/arm_dct4_q15.o \
./src/TransformFunctions/arm_dct4_q31.o \
./src/TransformFunctions/arm_rfft_f32.o \
./src/TransformFunctions/arm_rfft_fast_f32.o \
./src/TransformFunctions/arm_rfft_fast_init_f32.o \
./src/TransformFunctions/arm_rfft_init_f32.o \
./src/TransformFunctions/arm_rfft_init_q15.o \
./src/TransformFunctions/arm_rfft_init_q31.o \
./src/TransformFunctions/arm_rfft_q15.o \
./src/TransformFunctions/arm_rfft_q31.o 

C_DEPS += \
./src/TransformFunctions/arm_bitreversal.d \
./src/TransformFunctions/arm_cfft_f32.d \
./src/TransformFunctions/arm_cfft_q15.d \
./src/TransformFunctions/arm_cfft_q31.d \
./src/TransformFunctions/arm_cfft_radix2_f32.d \
./src/TransformFunctions/arm_cfft_radix2_init_f32.d \
./src/TransformFunctions/arm_cfft_radix2_init_q15.d \
./src/TransformFunctions/arm_cfft_radix2_init_q31.d \
./src/TransformFunctions/arm_cfft_radix2_q15.d \
./src/TransformFunctions/arm_cfft_radix2_q31.d \
./src/TransformFunctions/arm_cfft_radix4_f32.d \
./src/TransformFunctions/arm_cfft_radix4_init_f32.d \
./src/TransformFunctions/arm_cfft_radix4_init_q15.d \
./src/TransformFunctions/arm_cfft_radix4_init_q31.d \
./src/TransformFunctions/arm_cfft_radix4_q15.d \
./src/TransformFunctions/arm_cfft_radix4_q31.d \
./src/TransformFunctions/arm_cfft_radix8_f32.d \
./src/TransformFunctions/arm_dct4_f32.d \
./src/TransformFunctions/arm_dct4_init_f32.d \
./src/TransformFunctions/arm_dct4_init_q15.d \
./src/TransformFunctions/arm_dct4_init_q31.d \
./src/TransformFunctions/arm_dct4_q15.d \
./src/TransformFunctions/arm_dct4_q31.d \
./src/TransformFunctions/arm_rfft_f32.d \
./src/TransformFunctions/arm_rfft_fast_f32.d \
./src/TransformFunctions/arm_rfft_fast_init_f32.d \
./src/TransformFunctions/arm_rfft_init_f32.d \
./src/TransformFunctions/arm_rfft_init_q15.d \
./src/TransformFunctions/arm_rfft_init_q31.d \
./src/TransformFunctions/arm_rfft_q15.d \
./src/TransformFunctions/arm_rfft_q31.d 


# Each subdirectory must supply rules for building sources it contributes
src/TransformFunctions/%.o: ../src/TransformFunctions/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -D__FPU_PRESENT=1 -DARM_MATH_ROUNDING -DARM_MATH_CM4 -D__MULTICORE_NONE -DDEBUG -D__CODE_RED -DCORE_M4 -D__GENERIC_M4__ -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\COMMON\CMSIS_DSP_4_5_0\inc" -O0 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fsingle-precision-constant -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/TransformFunctions/%.o: ../src/TransformFunctions/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: MCU Assembler'
	arm-none-eabi-gcc -c -x assembler-with-cpp -D__REDLIB__ -D__MULTICORE_NONE -DDEBUG -D__CODE_RED -g3 -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -mthumb -specs=redlib.specs -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


