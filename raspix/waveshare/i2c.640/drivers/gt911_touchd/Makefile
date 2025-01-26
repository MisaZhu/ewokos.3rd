ROOT_DIR=../../../..
include $(ROOT_DIR)/make.inc

TASK_OBJS = gt911.o gt911_touchd.o
TASK = gt911_touchd 

TARGET_DIR = $(ROOTFS_DIR)/drivers/$(MF)

all: $(TASK)

$(TASK): $(TASK_OBJS)
	$(LD) -Ttext=100 $(TASK_OBJS) -o $(TASK) $(LDFLAGS)  $(BSP_LFLAGS) $(EWOK_LIBC)

install:
	mkdir -p $(TARGET_DIR)/
	cp -r $(TASK) $(TARGET_DIR)/

clean:
	rm -f $(TASK_OBJS)