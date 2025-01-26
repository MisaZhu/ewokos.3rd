ROOT_DIR=../..
include $(ROOT_DIR)/make.inc

CFLAGS += -Iinclude

LIB_XGO_OBJS = src/xgo.o

LIB_XGO = libxgo.a

$(LIB_XGO): $(LIB_XGO_OBJS)
	$(AR) rcs $(LIB_XGO) $(LIB_XGO_OBJS)

install:
	cp $(LIB_XGO) $(SDK_DIR)/lib/
	cp -r include/* $(SDK_DIR)/include/

clean:
	rm -f $(LIB_XGO_OBJS)
	rm -f $(LIB_XGO)

