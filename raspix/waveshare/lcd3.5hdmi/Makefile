export MF=waveshare
include ../../make.inc

all: 
	cd drivers/xpt2046d; make

install:
	mkdir -p $(ROOTFS_DIR)/drivers/$(MF)
	cd drivers/xpt2046d; make install
	cp -r etc $(ROOTFS_DIR)/

clean:	
	cd drivers/xpt2046d; make clean

