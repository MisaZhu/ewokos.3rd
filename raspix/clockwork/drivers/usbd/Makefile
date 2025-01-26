ROOT_DIR=../../..
include $(ROOT_DIR)/make.inc

LDFLAGS += -Llib 
CFLAGS += -I include

TASK_OBJS = usbd.o
TASK = usbd 

TARGET_DIR = $(ROOTFS_DIR)/drivers/$(MF)

all: $(TASK)

$(TASK): $(TASK_OBJS)
	$(LD) -Ttext=100 $(TASK_OBJS) -o $(TASK) $(LDFLAGS)  $(BSP_LFLAGS) $(EWOK_LIBC) -lcsud -lewoksys

install:
	mkdir -p $(TARGET_DIR)/
	cp -r $(TASK) $(TARGET_DIR)/

clean:
	rm -f $(TASK_OBJS)
	rm -f $(TASK)