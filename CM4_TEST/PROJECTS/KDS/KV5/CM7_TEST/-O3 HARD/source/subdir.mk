################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/ehughes/Documents/GitHub/ESC-M4/CM4_TEST/COMMON/SRC/TEST/CM_TEST.c \
C:/Users/ehughes/Documents/GitHub/ESC-M4/CM4_TEST/COMMON/SRC/TEST/Goertzel.c \
C:/Users/ehughes/Documents/GitHub/ESC-M4/CM4_TEST/COMMON/SRC/TEST/IIR.c 

OBJS += \
./source/CM_TEST.o \
./source/Goertzel.o \
./source/IIR.o 

C_DEPS += \
./source/CM_TEST.d \
./source/Goertzel.d \
./source/IIR.d 


# Each subdirectory must supply rules for building sources it contributes
source/CM_TEST.o: C:/Users/ehughes/Documents/GitHub/ESC-M4/CM4_TEST/COMMON/SRC/TEST/CM_TEST.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m7 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O3 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -flto -Wall  -g3 -D"CPU_MKV58F1M0VLQ24" -D__FPU_USED=1 -DABI=1 -D__FPU_PRESENT=1 -DARM_MATH_CM7 -DBUILD_CONFIG=3 -DBOARD=3 -I../startup -I"../../../../../COMMON/SRC/CMSIS_DSP_4_5/inc" -I../board -I../utilities -I../CMSIS -I../drivers -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

source/Goertzel.o: C:/Users/ehughes/Documents/GitHub/ESC-M4/CM4_TEST/COMMON/SRC/TEST/Goertzel.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m7 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O3 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -flto -Wall  -g3 -D"CPU_MKV58F1M0VLQ24" -D__FPU_USED=1 -DABI=1 -D__FPU_PRESENT=1 -DARM_MATH_CM7 -DBUILD_CONFIG=3 -DBOARD=3 -I../startup -I"../../../../../COMMON/SRC/CMSIS_DSP_4_5/inc" -I../board -I../utilities -I../CMSIS -I../drivers -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

source/IIR.o: C:/Users/ehughes/Documents/GitHub/ESC-M4/CM4_TEST/COMMON/SRC/TEST/IIR.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m7 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O3 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -flto -Wall  -g3 -D"CPU_MKV58F1M0VLQ24" -D__FPU_USED=1 -DABI=1 -D__FPU_PRESENT=1 -DARM_MATH_CM7 -DBUILD_CONFIG=3 -DBOARD=3 -I../startup -I"../../../../../COMMON/SRC/CMSIS_DSP_4_5/inc" -I../board -I../utilities -I../CMSIS -I../drivers -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


