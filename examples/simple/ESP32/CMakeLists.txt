# The following lines of boilerplate have to be in your project's
# CMakeLists in this exact order for cmake to work correctly
cmake_minimum_required(VERSION 3.5)

# Tell EVE library to use ESP32 as base class
add_compile_definitions(PLATFORM_ESP32)

set(EXTRA_COMPONENT_DIRS "../../../ports/eve_arch_esp32")

include($ENV{IDF_PATH}/tools/cmake/project.cmake)
project(BRT_AN_025)
