################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/graham.brown/STM32CubeIDE/workspace_1.12.1/ftdigdm__EVE-MCU-BRT_AN_025/examples/simple/common/eve_calibrate.c \
C:/Users/graham.brown/STM32CubeIDE/workspace_1.12.1/ftdigdm__EVE-MCU-BRT_AN_025/examples/simple/common/eve_example.c \
C:/Users/graham.brown/STM32CubeIDE/workspace_1.12.1/ftdigdm__EVE-MCU-BRT_AN_025/examples/simple/common/eve_fonts.c \
C:/Users/graham.brown/STM32CubeIDE/workspace_1.12.1/ftdigdm__EVE-MCU-BRT_AN_025/examples/simple/common/eve_helper.c \
C:/Users/graham.brown/STM32CubeIDE/workspace_1.12.1/ftdigdm__EVE-MCU-BRT_AN_025/examples/simple/common/eve_images.c 

OBJS += \
./common/eve_calibrate.o \
./common/eve_example.o \
./common/eve_fonts.o \
./common/eve_helper.o \
./common/eve_images.o 

C_DEPS += \
./common/eve_calibrate.d \
./common/eve_example.d \
./common/eve_fonts.d \
./common/eve_helper.d \
./common/eve_images.d 


# Each subdirectory must supply rules for building sources it contributes
common/eve_calibrate.o: C:/Users/graham.brown/STM32CubeIDE/workspace_1.12.1/ftdigdm__EVE-MCU-BRT_AN_025/examples/simple/common/eve_calibrate.c common/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F030x8 -DPLATFORM_STM32_CUBE -c -I../Core/Inc -I../Drivers/STM32F0xx_HAL_Driver/Inc -I../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/graham.brown/STM32CubeIDE/workspace_1.12.1/ftdigdm__EVE-MCU-BRT_AN_025/include" -I"C:/Users/graham.brown/STM32CubeIDE/workspace_1.12.1/ftdigdm__EVE-MCU-BRT_AN_025/examples/simple/common" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
common/eve_example.o: C:/Users/graham.brown/STM32CubeIDE/workspace_1.12.1/ftdigdm__EVE-MCU-BRT_AN_025/examples/simple/common/eve_example.c common/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F030x8 -DPLATFORM_STM32_CUBE -c -I../Core/Inc -I../Drivers/STM32F0xx_HAL_Driver/Inc -I../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/graham.brown/STM32CubeIDE/workspace_1.12.1/ftdigdm__EVE-MCU-BRT_AN_025/include" -I"C:/Users/graham.brown/STM32CubeIDE/workspace_1.12.1/ftdigdm__EVE-MCU-BRT_AN_025/examples/simple/common" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
common/eve_fonts.o: C:/Users/graham.brown/STM32CubeIDE/workspace_1.12.1/ftdigdm__EVE-MCU-BRT_AN_025/examples/simple/common/eve_fonts.c common/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F030x8 -DPLATFORM_STM32_CUBE -c -I../Core/Inc -I../Drivers/STM32F0xx_HAL_Driver/Inc -I../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/graham.brown/STM32CubeIDE/workspace_1.12.1/ftdigdm__EVE-MCU-BRT_AN_025/include" -I"C:/Users/graham.brown/STM32CubeIDE/workspace_1.12.1/ftdigdm__EVE-MCU-BRT_AN_025/examples/simple/common" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
common/eve_helper.o: C:/Users/graham.brown/STM32CubeIDE/workspace_1.12.1/ftdigdm__EVE-MCU-BRT_AN_025/examples/simple/common/eve_helper.c common/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F030x8 -DPLATFORM_STM32_CUBE -c -I../Core/Inc -I../Drivers/STM32F0xx_HAL_Driver/Inc -I../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/graham.brown/STM32CubeIDE/workspace_1.12.1/ftdigdm__EVE-MCU-BRT_AN_025/include" -I"C:/Users/graham.brown/STM32CubeIDE/workspace_1.12.1/ftdigdm__EVE-MCU-BRT_AN_025/examples/simple/common" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
common/eve_images.o: C:/Users/graham.brown/STM32CubeIDE/workspace_1.12.1/ftdigdm__EVE-MCU-BRT_AN_025/examples/simple/common/eve_images.c common/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F030x8 -DPLATFORM_STM32_CUBE -c -I../Core/Inc -I../Drivers/STM32F0xx_HAL_Driver/Inc -I../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/graham.brown/STM32CubeIDE/workspace_1.12.1/ftdigdm__EVE-MCU-BRT_AN_025/include" -I"C:/Users/graham.brown/STM32CubeIDE/workspace_1.12.1/ftdigdm__EVE-MCU-BRT_AN_025/examples/simple/common" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-common

clean-common:
	-$(RM) ./common/eve_calibrate.cyclo ./common/eve_calibrate.d ./common/eve_calibrate.o ./common/eve_calibrate.su ./common/eve_example.cyclo ./common/eve_example.d ./common/eve_example.o ./common/eve_example.su ./common/eve_fonts.cyclo ./common/eve_fonts.d ./common/eve_fonts.o ./common/eve_fonts.su ./common/eve_helper.cyclo ./common/eve_helper.d ./common/eve_helper.o ./common/eve_helper.su ./common/eve_images.cyclo ./common/eve_images.d ./common/eve_images.o ./common/eve_images.su

.PHONY: clean-common

