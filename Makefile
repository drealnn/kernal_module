obj-m += kmod.o 

KDIR:=/usr/src/linux-headers-3.13.0-32-generic

all:

	make -C $(KDIR) M=$(PWD) modules

clean:

	make -C $(KDIR) M=$(PWD) clean
