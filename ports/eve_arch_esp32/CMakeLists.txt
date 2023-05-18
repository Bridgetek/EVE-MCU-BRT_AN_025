# Tell EVE library to use ESP32 as base class

set(COMPONENT_NAME "eve_mcu_esp32")
set( CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DPLATFORM_ESP32=")

idf_component_register(SRCS "EVE_MCU_ESP32.c" "../../source/EVE_HAL.c" "../../source/EVE_API.c"
                       INCLUDE_DIRS "../../include"
                       REQUIRES driver soc)