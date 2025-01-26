export MF=waveshare
include ../../make.inc

all: 
	cd drivers/gt911_touchd; make

install:
	mkdir -p $(ROOTFS_DIR)/drivers/$(MF)
	cd drivers/gt911_touchd; make install
	cp -r etc $(ROOTFS_DIR)/

clean:	
	cd drivers/gt911_touchd; make clean
