################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/CommonTables/arm_common_tables.c \
../src/CommonTables/arm_const_structs.c 

OBJS += \
./src/CommonTables/arm_common_tables.o \
./src/CommonTables/arm_const_structs.o 

C_DEPS += \
./src/CommonTables/arm_common_tables.d \
./src/CommonTables/arm_const_structs.d 


# Each subdirectory must supply rules for building sources it contributes
src/CommonTables/%.o: ../src/CommonTables/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__REDLIB__ -D__FPU_PRESENT=1 -DARM_MATH_ROUNDING -DARM_MATH_CM4 -D__MULTICORE_NONE -DDEBUG -D__CODE_RED -DCORE_M4 -D__GENERIC_M4__ -I"C:\Users\Eli\Documents\GitHub\ESC-M4\CM4_TEST\COMMON\CMSIS_DSP_4_3_0\inc" -Os -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fsingle-precision-constant -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


