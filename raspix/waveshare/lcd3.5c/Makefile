export MF=waveshare
include ../../make.inc

all: 
	cd drivers/rpi_lcdd; make

install:
	mkdir -p $(ROOTFS_DIR)/drivers/$(MF)
	cd drivers/rpi_lcdd; make install
	cp -r etc $(ROOTFS_DIR)/

clean:	
	cd drivers/rpi_lcdd; make clean
