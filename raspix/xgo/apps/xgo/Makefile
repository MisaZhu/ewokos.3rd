ROOT_DIR=../..
include $(ROOT_DIR)/../make.inc

TASK_OBJS = xgo.o

TASK = xgo
BUILD_DIR = $(ROOT_DIR)/build/apps/$(TASK)

CXXFLAGS += -I ../../lib/include
LDFLAGS += -L../../lib

all: $(TASK)

$(TASK): $(TASK_OBJS) 
	mkdir -p $(BUILD_DIR)
	$(LD) -Ttext=100 $(TASK_OBJS) -o $(BUILD_DIR)/$(TASK) $(LDFLAGS) -lwidget++ -lx++ -lewokstl -lttf -lfont -lupng -lgraph -lbsp $(BSP_LFLAGS) -lx -ltinyjson -lsconf -lxgo  $(EWOK_LIBC)  -lcxx
	cp -r res $(BUILD_DIR)

clean:
	rm -f $(TASK_OBJS)


