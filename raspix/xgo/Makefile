export MF=xgo
include ../make.inc

all: 
	cd lib; make
	cd drivers/spilcdd; make
	cd drivers/buttond; make
	cd apps/xgo; make

install: 
	mkdir -p $(ROOTFS_DIR)/drivers/$(MF)
	cd lib; make install
	cd drivers/spilcdd; make install
	cd drivers/buttond; make install
	cd apps/xgo; make install
	cp -r etc $(ROOTFS_DIR)/

clean:	
	cd drivers/spilcdd; make clean
	cd drivers/buttond; make clean
	cd lib; make clean
	cd apps/xgo; make clean
