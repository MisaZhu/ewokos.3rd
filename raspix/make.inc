ifeq ($(ARCH),)
export ARCH=arm
endif

export BSP_LFLAGS= -larch_bcm283x
export HW=raspix

SDK_DIR= /usr/local/ewokos/$(ARCH)
ROOTFS_DIR= /usr/local/ewokos/$(ARCH)/$(HW)
INST_DIR= /usr/local/ewokos

include $(SDK_DIR)/make.rule

LDFLAGS = -L$(SDK_DIR)/lib
CFLAGS += -I include -I $(SDK_DIR)/include
CXXFLAGS += -I include -I $(SDK_DIR)/include

EWOK_LIBC = -lewoksys -lc -lgloss -lsoftfloat