#
# "main" pseudo-component makefile.
#
# (Uses default behaviour of compiling all source files in directory, adding 'include' to include path.)
COMPONENT_OBJS := main.o ../example/eve_calibrate.o ../example/eve_example.o ../example/eve_fonts.o ../example/eve_images.o ../example/eve_helper.o 
COMPONENT_SRCDIRS := . ../example
CFLAGS += -DPROGMEM= 
COMPONENT_ADD_INCLUDEDIRS := ../lib/eve/include ../example/ 
