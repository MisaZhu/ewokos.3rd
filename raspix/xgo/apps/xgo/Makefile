ROOT_DIR=../../..
include $(ROOT_DIR)/make.inc

TASK_OBJS = xgo.o

TASK = xgo
TARGET_DIR = $(ROOTFS_DIR)/apps/$(TASK)

CXXFLAGS += -I ../../lib/include
LDFLAGS += -L../../lib

all: $(TASK)

$(TASK): $(TASK_OBJS) 
	$(LD) -Ttext=100 $(TASK_OBJS) -o $(TASK) $(LDFLAGS) -lwidget++ -lx++ -lewokstl -lttf -lfont -lupng -lgraph -lbsp $(BSP_LFLAGS) -lx -ltinyjson -lsconf -lxgo  $(EWOK_LIBC)  -lcxx

install:
	mkdir -p $(TARGET_DIR)
	cp -r $(TASK) res $(TARGET_DIR)
clean:
	rm -f $(TASK_OBJS)


