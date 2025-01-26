ROOT_DIR=../../..
include $(ROOT_DIR)/make.inc

TASK_OBJS = xgo_buttond.o
TASK = xgo_buttond

TARGET_DIR = $(ROOTFS_DIR)/drivers/$(MF)

all: $(TASK)

$(TASK): $(TASK_OBJS)
	$(LD) -Ttext=100 $(TASK_OBJS) -o $(TASK) $(LDFLAGS)  $(BSP_LFLAGS) $(EWOK_LIBC)

install:
	mkdir -p $(TARGET_DIR)/
	cp -r $(TASK) $(TARGET_DIR)/

clean:
	rm -f $(TASK_OBJS)
	rm -f $(TASK)