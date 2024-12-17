# Makefile for building FT8xx-SPI Sample code for libmpsse on Linux.

APP = simple

# Use MPSSE. This tells BRT_AN_025 to override
CFLAGS += -DUSE_MPSSE=1
#CFLAGS += -Wall -Wextra 

ifeq ($(OS),Windows_NT)

# MPSSE link library.
LIBPATHMPSSE = release/build/x64/LIB/libmpsse.lib 

# Add in include directories for BRT_AN_025
CFLAGS += -Irelease/include -Irelease/libftd2xx -I../include -I../../../include  -I../common
CFLAGS += -DWIN32 -DNDEBUG -D_WINDOWS

# Add in flags for MPSSE_SPI.
CFLAGS += -DFT_VER_MAJOR=1 -DFT_VER_MINOR=0 -DFT_VER_BUILD=5
CFLAGS += -DFTDIMPSSE_STATIC

# Add sources from the HAL and the example common code.
C_SOURCES = $(wildcard ../common/*.c) \
	$(wildcard ../../../ports/eve_libmpsse/*.c) \
	$(wildcard ../../../source/*.c) \
    release/source/ftdi_infra.c \
	release/source/ftdi_spi.c \
    release/source/ftdi_i2c.c \
    release/source/ftdi_mid.c \
	main.c

# Object files.
OBJ_FILES = $(C_SOURCES:.c=.o) 

# Link libraries and search paths.
LIBFILES = -L$(dir $(LIBPATHMPSSE)) -l:$(notdir $(LIBPATHMPSSE))

STATIC_APP = $(APP)

all: $(APP).exe

$(APP).exe: $(OBJ_FILES)
	$(CC) $(CFLAGS) $(DEPENDENCIES) $^ $(LIBFLES) -o $(APP).exe 

clean:
	-rm -f *.o ; rm $(APP).exe;
	
else # Linux builds (NOT YET SUPPORTED!)

DEPENDENCIES := -lpthread -lrt -ldl
UNAME := $(shell uname)
# Assume target is Mac OS if build host is Mac OS; any other host targets Linux
ifeq ($(UNAME), Darwin)
	DEPENDENCIES += -lobjc -framework IOKit -framework CoreFoundation
else
	DEPENDENCIES += -lrt
endif

# Use MPSSE. This tells BRT_AN_025 to override
CFLAGS = -DUSE_MPSSE=1
CFLAGS += -Wall -Wextra 
# Add in include directories for BRT_AN_025
CFLAGS += -I/usr/local/include -I../include -I../../../include  -I../common

DYNAMIC_LINK_OPTIONS := -Wl,-rpath /usr/local/lib

STATIC_APP = $(APP)-static
DYNAMIC_APP = $(APP)-dynamic

C_SOURCES = $(wildcard Example/*.c) \
       $(wildcard Library/eve/eve_arch_libmpsse/*.c) \
       $(wildcard Library/eve/source/*.c) \
	   main.c
OBJ_FILES = $(C_SOURCES:.c=.o)

all: $(STATIC_APP) $(DYNAMIC_APP)

$(STATIC_APP): $(OBJ_FILES)
	$(CC) $^ -o $(STATIC_APP) -lmpsse $(CFLAGS) $(DEPENDENCIES)

$(DYNAMIC_APP): $(OBJ_FILES)
	$(CC) $^ -o $(DYNAMIC_APP) -lmpsse $(CFLAGS) $(DEPENDENCIES) $(DYNAMIC_LINK_OPTIONS)
	
clean:
	-rm -f *.o ; rm $(STATIC_APP); rm $(DYNAMIC_APP)
endif