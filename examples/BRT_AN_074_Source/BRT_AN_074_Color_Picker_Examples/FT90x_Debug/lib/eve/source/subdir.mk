################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lib/eve/source/EVE_API.c \
../lib/eve/source/EVE_HAL.c \
../lib/eve/source/EVE_HAL_Linux.c 

C_DEPS += \
./lib/eve/source/EVE_API.d \
./lib/eve/source/EVE_HAL.d \
./lib/eve/source/EVE_HAL_Linux.d 

OBJS += \
./lib/eve/source/EVE_API.o \
./lib/eve/source/EVE_HAL.o \
./lib/eve/source/EVE_HAL_Linux.o 


# Each subdirectory must supply rules for building sources it contributes
lib/eve/source/%.o: ../lib/eve/source/%.c lib/eve/source/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: FT9xx GCC Compiler'
	ft32-elf-gcc -D__FT900__ -DPLATFORM_FT9XX -I"C:\Users\graham.brown\AppData\Local\Bridgetek\FT9xx Toolchain\Toolchain/hardware/include" -I"C:\EVE-MCU-BRT_AN_025\EVE-MCU-BRT_AN_025-main\examples\BRT_AN_074_Source\BRT_AN_074_Color_Picker_Examples\example" -I"C:\EVE-MCU-BRT_AN_025\EVE-MCU-BRT_AN_025-main\examples\BRT_AN_074_Source\BRT_AN_074_Color_Picker_Examples\lib\eve\include" -I"C:\EVE-MCU-BRT_AN_025\EVE-MCU-BRT_AN_025-main\examples\BRT_AN_074_Source\BRT_AN_074_Color_Picker_Examples\lib\tinyprintf" -Og -g -fvar-tracking -fvar-tracking-assignments -Wall -c -fmessage-length=0 -ffunction-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-lib-2f-eve-2f-source

clean-lib-2f-eve-2f-source:
	-$(RM) ./lib/eve/source/EVE_API.d ./lib/eve/source/EVE_API.o ./lib/eve/source/EVE_HAL.d ./lib/eve/source/EVE_HAL.o ./lib/eve/source/EVE_HAL_Linux.d ./lib/eve/source/EVE_HAL_Linux.o

.PHONY: clean-lib-2f-eve-2f-source

