################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/eve/ports/eve_arch_esp32/EVE_MCU_ESP32.c 

C_DEPS += \
./lib/eve/ports/eve_arch_esp32/EVE_MCU_ESP32.d 

OBJS += \
./lib/eve/ports/eve_arch_esp32/EVE_MCU_ESP32.o 


# Each subdirectory must supply rules for building sources it contributes
lib/eve/ports/eve_arch_esp32/%.o: ../lib/eve/ports/eve_arch_esp32/%.c lib/eve/ports/eve_arch_esp32/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: FT9xx GCC Compiler'
	ft32-elf-gcc -D__FT900__ -DPLATFORM_FT9XX -I"C:\Users\graham.brown\AppData\Local\Bridgetek\FT9xx Toolchain\Toolchain/hardware/include" -I"C:\EVE-MCU-BRT_AN_025\EVE-MCU-BRT_AN_025-main\examples\BRT_AN_074_Source\BRT_AN_074_Color_Picker_Examples\example" -I"C:\EVE-MCU-BRT_AN_025\EVE-MCU-BRT_AN_025-main\examples\BRT_AN_074_Source\BRT_AN_074_Color_Picker_Examples\lib\eve\include" -I"C:\EVE-MCU-BRT_AN_025\EVE-MCU-BRT_AN_025-main\examples\BRT_AN_074_Source\BRT_AN_074_Color_Picker_Examples\lib\tinyprintf" -Og -g -fvar-tracking -fvar-tracking-assignments -Wall -c -fmessage-length=0 -ffunction-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-lib-2f-eve-2f-ports-2f-eve_arch_esp32

clean-lib-2f-eve-2f-ports-2f-eve_arch_esp32:
	-$(RM) ./lib/eve/ports/eve_arch_esp32/EVE_MCU_ESP32.d ./lib/eve/ports/eve_arch_esp32/EVE_MCU_ESP32.o

.PHONY: clean-lib-2f-eve-2f-ports-2f-eve_arch_esp32

