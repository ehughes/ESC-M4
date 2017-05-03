################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../source/drivers/fsl_adc.c \
../source/drivers/fsl_clock.c \
../source/drivers/fsl_common.c \
../source/drivers/fsl_crc.c \
../source/drivers/fsl_ctimer.c \
../source/drivers/fsl_dma.c \
../source/drivers/fsl_dmic.c \
../source/drivers/fsl_dmic_dma.c \
../source/drivers/fsl_eeprom.c \
../source/drivers/fsl_emc.c \
../source/drivers/fsl_enet.c \
../source/drivers/fsl_flashiap.c \
../source/drivers/fsl_flexcomm.c \
../source/drivers/fsl_fmc.c \
../source/drivers/fsl_fmeas.c \
../source/drivers/fsl_gint.c \
../source/drivers/fsl_gpio.c \
../source/drivers/fsl_i2c.c \
../source/drivers/fsl_i2c_dma.c \
../source/drivers/fsl_i2s.c \
../source/drivers/fsl_i2s_dma.c \
../source/drivers/fsl_inputmux.c \
../source/drivers/fsl_lcdc.c \
../source/drivers/fsl_mcan.c \
../source/drivers/fsl_mrt.c \
../source/drivers/fsl_pint.c \
../source/drivers/fsl_power.c \
../source/drivers/fsl_reset.c \
../source/drivers/fsl_rit.c \
../source/drivers/fsl_rtc.c \
../source/drivers/fsl_sctimer.c \
../source/drivers/fsl_sdif.c \
../source/drivers/fsl_spi.c \
../source/drivers/fsl_spi_dma.c \
../source/drivers/fsl_spifi.c \
../source/drivers/fsl_spifi_dma.c \
../source/drivers/fsl_usart.c \
../source/drivers/fsl_usart_dma.c \
../source/drivers/fsl_utick.c \
../source/drivers/fsl_wwdt.c 

OBJS += \
./source/drivers/fsl_adc.o \
./source/drivers/fsl_clock.o \
./source/drivers/fsl_common.o \
./source/drivers/fsl_crc.o \
./source/drivers/fsl_ctimer.o \
./source/drivers/fsl_dma.o \
./source/drivers/fsl_dmic.o \
./source/drivers/fsl_dmic_dma.o \
./source/drivers/fsl_eeprom.o \
./source/drivers/fsl_emc.o \
./source/drivers/fsl_enet.o \
./source/drivers/fsl_flashiap.o \
./source/drivers/fsl_flexcomm.o \
./source/drivers/fsl_fmc.o \
./source/drivers/fsl_fmeas.o \
./source/drivers/fsl_gint.o \
./source/drivers/fsl_gpio.o \
./source/drivers/fsl_i2c.o \
./source/drivers/fsl_i2c_dma.o \
./source/drivers/fsl_i2s.o \
./source/drivers/fsl_i2s_dma.o \
./source/drivers/fsl_inputmux.o \
./source/drivers/fsl_lcdc.o \
./source/drivers/fsl_mcan.o \
./source/drivers/fsl_mrt.o \
./source/drivers/fsl_pint.o \
./source/drivers/fsl_power.o \
./source/drivers/fsl_reset.o \
./source/drivers/fsl_rit.o \
./source/drivers/fsl_rtc.o \
./source/drivers/fsl_sctimer.o \
./source/drivers/fsl_sdif.o \
./source/drivers/fsl_spi.o \
./source/drivers/fsl_spi_dma.o \
./source/drivers/fsl_spifi.o \
./source/drivers/fsl_spifi_dma.o \
./source/drivers/fsl_usart.o \
./source/drivers/fsl_usart_dma.o \
./source/drivers/fsl_utick.o \
./source/drivers/fsl_wwdt.o 

C_DEPS += \
./source/drivers/fsl_adc.d \
./source/drivers/fsl_clock.d \
./source/drivers/fsl_common.d \
./source/drivers/fsl_crc.d \
./source/drivers/fsl_ctimer.d \
./source/drivers/fsl_dma.d \
./source/drivers/fsl_dmic.d \
./source/drivers/fsl_dmic_dma.d \
./source/drivers/fsl_eeprom.d \
./source/drivers/fsl_emc.d \
./source/drivers/fsl_enet.d \
./source/drivers/fsl_flashiap.d \
./source/drivers/fsl_flexcomm.d \
./source/drivers/fsl_fmc.d \
./source/drivers/fsl_fmeas.d \
./source/drivers/fsl_gint.d \
./source/drivers/fsl_gpio.d \
./source/drivers/fsl_i2c.d \
./source/drivers/fsl_i2c_dma.d \
./source/drivers/fsl_i2s.d \
./source/drivers/fsl_i2s_dma.d \
./source/drivers/fsl_inputmux.d \
./source/drivers/fsl_lcdc.d \
./source/drivers/fsl_mcan.d \
./source/drivers/fsl_mrt.d \
./source/drivers/fsl_pint.d \
./source/drivers/fsl_power.d \
./source/drivers/fsl_reset.d \
./source/drivers/fsl_rit.d \
./source/drivers/fsl_rtc.d \
./source/drivers/fsl_sctimer.d \
./source/drivers/fsl_sdif.d \
./source/drivers/fsl_spi.d \
./source/drivers/fsl_spi_dma.d \
./source/drivers/fsl_spifi.d \
./source/drivers/fsl_spifi_dma.d \
./source/drivers/fsl_usart.d \
./source/drivers/fsl_usart_dma.d \
./source/drivers/fsl_utick.d \
./source/drivers/fsl_wwdt.d 


# Each subdirectory must supply rules for building sources it contributes
source/drivers/%.o: ../source/drivers/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -DSDK_DEBUGCONSOLE=0 -DARM_MATH_CM4 -DSDK_DEBUGCONSOLE_UART -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -DFSL_RTOS_BM -DSDK_OS_BAREMETAL -DCPU_LPC54608J512BD208 -DCPU_LPC54608J512BD208_cm4 -D__REDLIB__ -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\PROJECTS\LPCXPRESSO\ESC_DEMO\source\Audio" -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\COMMON\SRC\CMSIS_DSP_4_5\inc" -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\PROJECTS\LPCXPRESSO\ESC_DEMO\source\CMSIS" -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\PROJECTS\LPCXPRESSO\ESC_DEMO\source\drivers" -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\PROJECTS\LPCXPRESSO\ESC_DEMO\source\eGFX" -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\PROJECTS\LPCXPRESSO\ESC_DEMO\source\eGFX\Drivers" -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\PROJECTS\LPCXPRESSO\ESC_DEMO\source\eGFX\Fonts\Arial__23px__Regular__SystemDefault_1BPP" -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\PROJECTS\LPCXPRESSO\ESC_DEMO\source\eGFX\Fonts" -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\PROJECTS\LPCXPRESSO\ESC_DEMO\source\eGFX\Fonts\Magneto__26px__Regular__AntiAliasGridFit_16BPP_565" -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\PROJECTS\LPCXPRESSO\ESC_DEMO\source\eGFX\Fonts\OCR_A_Extended__20px__Bold__SingleBitPerPixelGridFit_1BPP" -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\PROJECTS\LPCXPRESSO\ESC_DEMO\source\eGFX\Fonts\Consolas__26px__Regular__AntiAliasGridFit_1BPP" -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\PROJECTS\LPCXPRESSO\ESC_DEMO\source\eGFX\Sprites" -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\PROJECTS\LPCXPRESSO\ESC_DEMO\source\lpcxpresso54608" -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\PROJECTS\LPCXPRESSO\ESC_DEMO\source\startup" -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\PROJECTS\LPCXPRESSO\ESC_DEMO\source\TouchScreen" -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\PROJECTS\LPCXPRESSO\ESC_DEMO\source\utilities" -I"C:\Users\emh203\Documents\GitHub\ESC-M4\CM4_TEST\PROJECTS\LPCXPRESSO\ESC_DEMO" -O0 -fno-common -g3 -Wall -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -D__REDLIB__ -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


