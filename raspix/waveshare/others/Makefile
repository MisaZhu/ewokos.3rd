export MF=waveshare
include ../../make.inc

all: 
	cd drivers/ili9486d; make

install:
	mkdir -p $(ROOTFS_DIR)/drivers/$(MF)
	cd drivers/ili9486d; make install
	cp -r etc $(ROOTFS_DIR)/

clean:	
	cd drivers/ili9486d; make clean

