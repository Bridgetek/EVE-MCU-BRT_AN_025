################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/ftdigdm__EVE-MCU-BRT_AN_025/ports/eve_arch_stm32cube/EVE_MCU_STM32CUBE.c 

OBJS += \
./eve_arch_stm32cube/EVE_MCU_STM32CUBE.o 

C_DEPS += \
./eve_arch_stm32cube/EVE_MCU_STM32CUBE.d 


# Each subdirectory must supply rules for building sources it contributes
eve_arch_stm32cube/EVE_MCU_STM32CUBE.o: C:/ftdigdm__EVE-MCU-BRT_AN_025/ports/eve_arch_stm32cube/EVE_MCU_STM32CUBE.c eve_arch_stm32cube/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F030x8 -DPLATFORM_STM32_CUBE -c -I../Core/Inc -I../Drivers/STM32F0xx_HAL_Driver/Inc -I../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../Drivers/CMSIS/Include -I"C:/ftdigdm__EVE-MCU-BRT_AN_025/examples/simple/STM32CUBE../../common" -I"C:/ftdigdm__EVE-MCU-BRT_AN_025/examples/simple/STM32CUBE../../../../include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-eve_arch_stm32cube

clean-eve_arch_stm32cube:
	-$(RM) ./eve_arch_stm32cube/EVE_MCU_STM32CUBE.cyclo ./eve_arch_stm32cube/EVE_MCU_STM32CUBE.d ./eve_arch_stm32cube/EVE_MCU_STM32CUBE.o ./eve_arch_stm32cube/EVE_MCU_STM32CUBE.su

.PHONY: clean-eve_arch_stm32cube

