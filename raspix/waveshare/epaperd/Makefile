export MF=waveshare
include ../../make.inc

all: 
	cd drivers/epaperd; make

install:
	mkdir -p $(ROOTFS_DIR)/drivers/$(MF)
	cd drivers/epaperd; make install
	cp -r etc $(ROOTFS_DIR)/

clean:	
	cd drivers/epaperd; make clean
