export MF=clockwork
include ../make.inc

all: 
	cd drivers/fbd; make
	cd drivers/usbd; make
	cd drivers/powerd; make

install: 
	mkdir -p $(ROOTFS_DIR)/drivers/$(MF)
	cd drivers/fbd; make install
	cd drivers/usbd; make install
	cd drivers/powerd; make install
	cp -r etc $(ROOTFS_DIR)/

clean:	
	cd drivers/fbd; make clean
	cd drivers/usbd; make clean
	cd drivers/powerd; make clean