ROOT_DIR=../..
include $(ROOT_DIR)/../../make.inc

EXTRA_LIBS_DIR = ../../../libs

TASK_OBJS = xpt2046d.o \
		$(EXTRA_LIBS_DIR)/xpt2046/src/xpt2046.o

CFLAGS += -I $(EXTRA_LIBS_DIR)/xpt2046/include 

TASK = xpt2046d 

BUILD_DIR = $(ROOT_DIR)/build/drivers/$(MF)

all: $(TASK)

$(TASK): $(TASK_OBJS)
	mkdir -p $(BUILD_DIR)
	$(LD) -Ttext=100 $(TASK_OBJS) -o $(BUILD_DIR)/$(TASK) $(LDFLAGS) -lfbd -ltinyjson -lupng -lgraph -lbsp $(BSP_LFLAGS) $(EWOK_LIBC)

clean:
	rm -f $(TASK_OBJS)