obj-m+=kmod.o
 
all:
 make -C /lib/modules/$(shell uname -r)/build/ M=$(PWD) modules
 $(CC) kmod.c -o test
clean:
 make -C /lib/modules/$(shell uname -r)/build/ M=$(PWD) clean
