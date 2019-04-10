
FILE := test
obj-m += $(FILE).o  

KDIR  := /home/chencx/aplex/kernel4.4.12/

all:
	make -C $(KDIR)  M=$(PWD)  modules

clean:
	@rm  *.order  *.sym*  *.mod*  .*.cmd  *.o .tmp*  -rf

chmod:
	@chmod  666  $(FILE).c

bsp:
	@cp ./*.ko    /mnt/share/

