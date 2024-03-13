################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/EVE-MCU-BRT_AN_025/ports/eve_arch_pic/EVE_MCU_PIC.c 

C_DEPS += \
./ports/eve_arch_pic/EVE_MCU_PIC.d 

OBJS += \
./ports/eve_arch_pic/EVE_MCU_PIC.o 


# Each subdirectory must supply rules for building sources it contributes
ports/eve_arch_pic/EVE_MCU_PIC.o: C:/EVE-MCU-BRT_AN_025/ports/eve_arch_pic/EVE_MCU_PIC.c ports/eve_arch_pic/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: FT9xx GCC Compiler'
	ft32-elf-gcc -D__FT900__ -DPLATFORM_FT9XX -I"C:\Users\graham.brown\AppData\Local\Bridgetek\FT9xx Toolchain\Toolchain/hardware/include" -I"C:\EVE-MCU-BRT_AN_025\examples\BRT_AN_074_Source\BRT_AN_074_Color_Picker_Examples\example" -Og -g -fvar-tracking -fvar-tracking-assignments -Wall -c -fmessage-length=0 -ffunction-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-ports-2f-eve_arch_pic

clean-ports-2f-eve_arch_pic:
	-$(RM) ./ports/eve_arch_pic/EVE_MCU_PIC.d ./ports/eve_arch_pic/EVE_MCU_PIC.o

.PHONY: clean-ports-2f-eve_arch_pic

