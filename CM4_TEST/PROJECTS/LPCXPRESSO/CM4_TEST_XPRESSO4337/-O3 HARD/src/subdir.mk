################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/emh203/Documents/GitHub/ESC-M4/CM4_TEST/COMMON/SRC/CM4_TEST.c \
C:/Users/emh203/Documents/GitHub/ESC-M4/CM4_TEST/COMMON/SRC/Goertzel.c \
C:/Users/emh203/Documents/GitHub/ESC-M4/CM4_TEST/COMMON/SRC/IIR.c \
../src/cr_startup_lpc43xx.c \
../src/crp.c \
../src/sysinit.c 

OBJS += \
./src/CM4_TEST.o \
./src/Goertzel.o \
./src/IIR.o \
./src/cr_startup_lpc43xx.o \
./src/crp.o \
./src/sysinit.o 

C_DEPS += \
./src/CM4_TEST.d \
./src/Goertzel.d \
./src/IIR.d \
./src/cr_startup_lpc43xx.d \
./src/crp.d \
./src/sysinit.d 


# Each subdirectory must supply rules for building sources it contributes
src/CM4_TEST.o: C:/Users/emh203/Documents/GitHub/ESC-M4/CM4_TEST/COMMON/SRC/CM4_TEST.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__MULTICORE_NONE -DBOARD=0 -D__FPU_PRESENT=1 -DABI=1 -DBUILD_CONFIG=3 -DARM_MATH_ROUNDING -DARM_MATH_CM4 -DDEBUG -D__CODE_RED -DCORE_M4 -D__USE_LPCOPEN -D__LPC43XX__ -D__REDLIB__ -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\COMMON\lpc_board_nxp_lpclink2_4370\inc" -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\COMMON\CMSIS_DSP_4_5_0\inc" -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\COMMON\lpc_chip_43xx\inc" -O3 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fsingle-precision-constant -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Goertzel.o: C:/Users/emh203/Documents/GitHub/ESC-M4/CM4_TEST/COMMON/SRC/Goertzel.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__MULTICORE_NONE -DBOARD=0 -D__FPU_PRESENT=1 -DABI=1 -DBUILD_CONFIG=3 -DARM_MATH_ROUNDING -DARM_MATH_CM4 -DDEBUG -D__CODE_RED -DCORE_M4 -D__USE_LPCOPEN -D__LPC43XX__ -D__REDLIB__ -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\COMMON\lpc_board_nxp_lpclink2_4370\inc" -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\COMMON\CMSIS_DSP_4_5_0\inc" -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\COMMON\lpc_chip_43xx\inc" -O3 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fsingle-precision-constant -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/IIR.o: C:/Users/emh203/Documents/GitHub/ESC-M4/CM4_TEST/COMMON/SRC/IIR.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__MULTICORE_NONE -DBOARD=0 -D__FPU_PRESENT=1 -DABI=1 -DBUILD_CONFIG=3 -DARM_MATH_ROUNDING -DARM_MATH_CM4 -DDEBUG -D__CODE_RED -DCORE_M4 -D__USE_LPCOPEN -D__LPC43XX__ -D__REDLIB__ -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\COMMON\lpc_board_nxp_lpclink2_4370\inc" -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\COMMON\CMSIS_DSP_4_5_0\inc" -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\COMMON\lpc_chip_43xx\inc" -O3 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fsingle-precision-constant -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -D__MULTICORE_NONE -DBOARD=0 -D__FPU_PRESENT=1 -DABI=1 -DBUILD_CONFIG=3 -DARM_MATH_ROUNDING -DARM_MATH_CM4 -DDEBUG -D__CODE_RED -DCORE_M4 -D__USE_LPCOPEN -D__LPC43XX__ -D__REDLIB__ -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\COMMON\lpc_board_nxp_lpclink2_4370\inc" -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\COMMON\CMSIS_DSP_4_5_0\inc" -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\COMMON\lpc_chip_43xx\inc" -O3 -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fsingle-precision-constant -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


