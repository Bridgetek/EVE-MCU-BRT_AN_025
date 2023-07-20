################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/ftdigdm__EVE-MCU-BRT_AN_025/source/EVE_API.c \
C:/ftdigdm__EVE-MCU-BRT_AN_025/source/EVE_HAL.c 

OBJS += \
./source/EVE_API.o \
./source/EVE_HAL.o 

C_DEPS += \
./source/EVE_API.d \
./source/EVE_HAL.d 


# Each subdirectory must supply rules for building sources it contributes
source/EVE_API.o: C:/ftdigdm__EVE-MCU-BRT_AN_025/source/EVE_API.c source/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F030x8 -DPLATFORM_STM32_CUBE -c -I../Core/Inc -I../Drivers/STM32F0xx_HAL_Driver/Inc -I../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../Drivers/CMSIS/Include -I"C:/ftdigdm__EVE-MCU-BRT_AN_025/examples/simple/STM32CUBE../../common" -I"C:/ftdigdm__EVE-MCU-BRT_AN_025/examples/simple/STM32CUBE../../../../include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
source/EVE_HAL.o: C:/ftdigdm__EVE-MCU-BRT_AN_025/source/EVE_HAL.c source/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F030x8 -DPLATFORM_STM32_CUBE -c -I../Core/Inc -I../Drivers/STM32F0xx_HAL_Driver/Inc -I../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../Drivers/CMSIS/Include -I"C:/ftdigdm__EVE-MCU-BRT_AN_025/examples/simple/STM32CUBE../../common" -I"C:/ftdigdm__EVE-MCU-BRT_AN_025/examples/simple/STM32CUBE../../../../include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-source

clean-source:
	-$(RM) ./source/EVE_API.cyclo ./source/EVE_API.d ./source/EVE_API.o ./source/EVE_API.su ./source/EVE_HAL.cyclo ./source/EVE_HAL.d ./source/EVE_HAL.o ./source/EVE_HAL.su

.PHONY: clean-source

