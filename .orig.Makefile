obj-m+=kmod.o
 
all:
	x=$(uname -r)
	make -C /lib/modules/$x/build/ M=$(PWD) modules
	$(CC) kmod.c -o test
clean:
	make -C /lib/modules/$x/build/ M=$(PWD) clean
