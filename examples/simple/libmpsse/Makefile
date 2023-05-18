# Makefile for building FT8xx-SPI Sample code for libmpsse on Linux.

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
CFLAGS += -I/usr/local/include -IExample -ILibrary/eve/include

DYNAMIC_LINK_OPTIONS := -Wl,-rpath /usr/local/lib

APP = FT8xx-SPI
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
