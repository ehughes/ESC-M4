################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../source/eGFX/Fonts/OCR_A_Extended__20px__Bold__SingleBitPerPixelGridFit_1BPP/OCR_A_Extended__20px__Bold__SingleBitPerPixelGridFit_1BPP.c 

OBJS += \
./source/eGFX/Fonts/OCR_A_Extended__20px__Bold__SingleBitPerPixelGridFit_1BPP/OCR_A_Extended__20px__Bold__SingleBitPerPixelGridFit_1BPP.o 

C_DEPS += \
./source/eGFX/Fonts/OCR_A_Extended__20px__Bold__SingleBitPerPixelGridFit_1BPP/OCR_A_Extended__20px__Bold__SingleBitPerPixelGridFit_1BPP.d 


# Each subdirectory must supply rules for building sources it contributes
source/eGFX/Fonts/OCR_A_Extended__20px__Bold__SingleBitPerPixelGridFit_1BPP/%.o: ../source/eGFX/Fonts/OCR_A_Extended__20px__Bold__SingleBitPerPixelGridFit_1BPP/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -DSDK_DEBUGCONSOLE=0 -DARM_MATH_CM4 -DSDK_DEBUGCONSOLE_UART -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -DFSL_RTOS_BM -DSDK_OS_BAREMETAL -DCPU_LPC54608J512BD208 -DCPU_LPC54608J512BD208_cm4 -D__REDLIB__ -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\PROJECTS\LPCXPRESSO\ESC_DEMO\source\Audio" -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\COMMON\SRC\CMSIS_DSP_4_5\inc" -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\PROJECTS\LPCXPRESSO\ESC_DEMO\source\CMSIS" -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\PROJECTS\LPCXPRESSO\ESC_DEMO\source\drivers" -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\PROJECTS\LPCXPRESSO\ESC_DEMO\source\eGFX" -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\PROJECTS\LPCXPRESSO\ESC_DEMO\source\eGFX\Drivers" -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\PROJECTS\LPCXPRESSO\ESC_DEMO\source\eGFX\Fonts\Arial__23px__Regular__SystemDefault_1BPP" -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\PROJECTS\LPCXPRESSO\ESC_DEMO\source\eGFX\Fonts" -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\PROJECTS\LPCXPRESSO\ESC_DEMO\source\eGFX\Fonts\Magneto__26px__Regular__AntiAliasGridFit_16BPP_565" -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\PROJECTS\LPCXPRESSO\ESC_DEMO\source\eGFX\Fonts\OCR_A_Extended__20px__Bold__SingleBitPerPixelGridFit_1BPP" -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\PROJECTS\LPCXPRESSO\ESC_DEMO\source\eGFX\Fonts\Consolas__26px__Regular__AntiAliasGridFit_1BPP" -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\PROJECTS\LPCXPRESSO\ESC_DEMO\source\eGFX\Sprites" -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\PROJECTS\LPCXPRESSO\ESC_DEMO\source\lpcxpresso54608" -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\PROJECTS\LPCXPRESSO\ESC_DEMO\source\startup" -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\PROJECTS\LPCXPRESSO\ESC_DEMO\source\TouchScreen" -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\PROJECTS\LPCXPRESSO\ESC_DEMO\source\utilities" -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\PROJECTS\LPCXPRESSO\ESC_DEMO" -O3 -fno-common -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


