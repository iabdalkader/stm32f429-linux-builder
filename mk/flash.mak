FLASH_CMD:
	dfu-util -d 0483:df11 -c 1 -i 0 -a 0 -s 0x08000000 -D $(uboot_target)
	dfu-util -d 0483:df11 -c 1 -i 0 -a 0 -s 0x08020000 -D $(kernel_target)
	dfu-util -d 0483:df11 -c 1 -i 0 -a 0 -s 0x08120000 -D $(rootfs_target)
