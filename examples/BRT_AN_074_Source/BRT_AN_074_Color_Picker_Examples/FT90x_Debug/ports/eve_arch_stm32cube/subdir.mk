################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/EVE-MCU-BRT_AN_025/ports/eve_arch_stm32cube/EVE_MCU_STM32CUBE.c 

C_DEPS += \
./ports/eve_arch_stm32cube/EVE_MCU_STM32CUBE.d 

OBJS += \
./ports/eve_arch_stm32cube/EVE_MCU_STM32CUBE.o 


# Each subdirectory must supply rules for building sources it contributes
ports/eve_arch_stm32cube/EVE_MCU_STM32CUBE.o: C:/EVE-MCU-BRT_AN_025/ports/eve_arch_stm32cube/EVE_MCU_STM32CUBE.c ports/eve_arch_stm32cube/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: FT9xx GCC Compiler'
	ft32-elf-gcc -D__FT900__ -DPLATFORM_FT9XX -I"C:\Users\graham.brown\AppData\Local\Bridgetek\FT9xx Toolchain\Toolchain/hardware/include" -I"C:\EVE-MCU-BRT_AN_025\examples\BRT_AN_074_Source\BRT_AN_074_Color_Picker_Examples\example" -Og -g -fvar-tracking -fvar-tracking-assignments -Wall -c -fmessage-length=0 -ffunction-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ports-2f-eve_arch_stm32cube

clean-ports-2f-eve_arch_stm32cube:
	-$(RM) ./ports/eve_arch_stm32cube/EVE_MCU_STM32CUBE.d ./ports/eve_arch_stm32cube/EVE_MCU_STM32CUBE.o

.PHONY: clean-ports-2f-eve_arch_stm32cube

