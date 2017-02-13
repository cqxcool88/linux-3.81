#!/bin/sh

path="./arm"

echo "erase..."
sudo dd if=/dev/zero of=/dev/sdb count=20000

echo "uboot write start..."
sudo dd if=/home/cqxcool/linux/uboot/u-boot-2015.04_abcamus/bootloader-for-Exynos-4412/image.bin of=/dev/sdb seek=1
echo "done!\n"

if [ ! -f uboot.bin ]
then
echo "dtb write start..."
sudo dd if=/home/cqxcool/linux/kernel/linux-3.8.1/arch/arm/boot/dts/exynos4412-smdk4412.dtb of=/dev/sdb seek=2048
echo "write done!\n"

echo "kernel write start..."
sudo dd if=/home/cqxcool/linux/kernel/linux-3.8.1/arch/arm/boot/uImage of=/dev/sdb seek=4096
echo "done!\n"

echo "ramdisk write start..."
sudo dd if=/home/cqxcool/linux/kernel/linux-3.8.1/ramdisk.img of=/dev/sdb seek=16384
echo "done\n"
fi

echo "all write work is ok!"

