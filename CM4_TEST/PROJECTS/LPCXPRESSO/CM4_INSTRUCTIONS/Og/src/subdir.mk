################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/CM4_INSTRUCTIONS.c \
../src/cr_startup_lpc43xx.c \
../src/crp.c 

OBJS += \
./src/CM4_INSTRUCTIONS.o \
./src/cr_startup_lpc43xx.o \
./src/crp.o 

C_DEPS += \
./src/CM4_INSTRUCTIONS.d \
./src/cr_startup_lpc43xx.d \
./src/crp.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__MULTICORE_NONE -DARM_MATH_CM4 -DDEBUG -D__CODE_RED -DCORE_M4 -D__LPC43XX__ -D__REDLIB__ -I"C:\Users\Eli\Documents\GitHub\ESC-M4\CM4_TEST\COMMON\CMSIS_DSP_4_3_0\inc" -Og -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fsingle-precision-constant -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -mthumb -D__REDLIB__ -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


