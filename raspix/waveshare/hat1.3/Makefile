export MF=waveshare
include ../../make.inc

all: 
	cd drivers/joykeybd; make
	cd drivers/gamekbd; make
	cd drivers/lcdhatd; make

install:
	mkdir -p $(ROOTFS_DIR)/drivers/$(MF)
	cd drivers/joykeybd; make install
	cd drivers/gamekbd; make install
	cd drivers/lcdhatd; make install
	cp -r etc $(ROOTFS_DIR)/

clean:	
	cd drivers/joykeybd; make clean
	cd drivers/gamekbd; make clean
	cd drivers/lcdhatd; make clean
