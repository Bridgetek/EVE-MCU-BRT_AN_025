################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../example/eve_calibrate.c \
../example/eve_example.c \
../example/eve_fonts.c \
../example/eve_helper.c \
../example/eve_images.c 

C_DEPS += \
./example/eve_calibrate.d \
./example/eve_example.d \
./example/eve_fonts.d \
./example/eve_helper.d \
./example/eve_images.d 

OBJS += \
./example/eve_calibrate.o \
./example/eve_example.o \
./example/eve_fonts.o \
./example/eve_helper.o \
./example/eve_images.o 


# Each subdirectory must supply rules for building sources it contributes
example/%.o: ../example/%.c example/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: FT9xx GCC Compiler'
	ft32-elf-gcc -D__FT900__ -DPLATFORM_FT9XX -I"C:\Users\graham.brown\AppData\Local\Bridgetek\FT9xx Toolchain\Toolchain/hardware/include" -I"C:\EVE-MCU-BRT_AN_025\include" -I"C:\EVE-MCU-BRT_AN_025\examples\BRT_AN_074_Source\BRT_AN_074_Color_Picker_Examples\example" -Og -g -fvar-tracking -fvar-tracking-assignments -Wall -c -fmessage-length=0 -ffunction-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

example/eve_example.o: ../example/eve_example.c example/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: FT9xx GCC Compiler'
	ft32-elf-gcc -D__FT900__ -DPLATFORM_FT9XX -I"C:\Users\graham.brown\AppData\Local\Bridgetek\FT9xx Toolchain\Toolchain/hardware/include" -I"C:\EVE-MCU-BRT_AN_025\include" -I"C:\EVE-MCU-BRT_AN_025\examples\BRT_AN_074_Source\BRT_AN_074_Color_Picker_Examples\example" -Og -g -fvar-tracking -fvar-tracking-assignments -Wall -c -fmessage-length=0 -ffunction-sections -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-example

clean-example:
	-$(RM) ./example/eve_calibrate.d ./example/eve_calibrate.o ./example/eve_example.d ./example/eve_example.o ./example/eve_fonts.d ./example/eve_fonts.o ./example/eve_helper.d ./example/eve_helper.o ./example/eve_images.d ./example/eve_images.o

.PHONY: clean-example

