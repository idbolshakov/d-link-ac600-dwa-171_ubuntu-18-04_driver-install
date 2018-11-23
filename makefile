install: 
	sudo apt-get install git gcc;
	cd /tmp && git clone https://github.com/gnab/rtl8812au;
	cd /tmp/rtl8812au && make && sudo insmod 8812au.ko;
	sudo cp /tmp/rtl8812au/8812au.ko /lib/modules/$$(uname -r)/kernel/drivers/net/wireless;
	sudo depmod;
	echo "install successed";
