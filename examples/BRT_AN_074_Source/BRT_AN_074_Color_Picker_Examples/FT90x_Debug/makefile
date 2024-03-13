################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include source/subdir.mk
-include ports/eve_arch_ft9xx/subdir.mk
-include main/subdir.mk
-include example/subdir.mk
ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := BRT_AN_074_Color_Picker_Examples
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
BRT_AN_074_Color_Picker_Examples.bin \

SECONDARY_SIZE += \
SIZE \


# All Target
all: main-build

# Main-build Target
main-build: BRT_AN_074_Color_Picker_Examples.elf secondary-outputs

# Tool invocations
BRT_AN_074_Color_Picker_Examples.elf: $(OBJS) $(USER_OBJS) makefile $(OPTIONAL_TOOL_DEPS)
	@echo 'Building target: $@'
	@echo 'Invoking: FT9xx GCC Linker'
	ft32-elf-gcc -nostartfiles -L"C:\Users\graham.brown\AppData\Local\Bridgetek\FT9xx Toolchain\Toolchain/hardware/lib/Debug" -Wl,--gc-sections -Wl,--entry=_start -Xlinker --defsym=__FT900__=1 -Xlinker -T ../scripts/ldscript.ld -o "BRT_AN_074_Color_Picker_Examples.elf" $(OBJS) $(USER_OBJS) $(LIBS) -lft900 -lc -lstub
	@echo 'Finished building target: $@'
	@echo ' '

BRT_AN_074_Color_Picker_Examples.bin: BRT_AN_074_Color_Picker_Examples.elf makefile $(OPTIONAL_TOOL_DEPS)
	@echo 'Invoking: FT9xx Flash File Generator'
	ft32-elf-objcopy --output-target binary "BRT_AN_074_Color_Picker_Examples.elf"  "BRT_AN_074_Color_Picker_Examples.bin"
	@echo 'Finished building: $@'
	@echo ' '

SIZE: BRT_AN_074_Color_Picker_Examples.elf makefile $(OPTIONAL_TOOL_DEPS)
	@echo 'Invoking: FT9xx Display Image Size'
	ft32-elf-size --format=berkeley -x "BRT_AN_074_Color_Picker_Examples.elf"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) BRT_AN_074_Color_Picker_Examples.bin BRT_AN_074_Color_Picker_Examples.elf SIZE
	-@echo ' '

secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_SIZE)

.PHONY: all clean dependents main-build

-include ../makefile.targets
