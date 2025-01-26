ROOT_DIR=../../..
include $(ROOT_DIR)/make.inc

TASK_OBJS = fbd.o
TASK = fbd 

TARGET_DIR = $(ROOTFS_DIR)/drivers/$(MF)

all: $(TASK)

$(TASK): $(TASK_OBJS)
	$(LD) -Ttext=100 $(TASK_OBJS) -o $(TASK) $(LDFLAGS)  -larch_bcm283x -lfbd -lupng -lgraph -lbsp $(BSP_LFLAGS) -lsconf $(EWOK_LIBC)

install:
	mkdir -p $(TARGET_DIR)/
	cp -r $(TASK) $(TARGET_DIR)/

clean:
	rm -f $(TASK_OBJS)
	rm -f $(TASK)
