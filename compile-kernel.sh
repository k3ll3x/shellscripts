#!/bin/bash
#copy this file into the extracted linux kernel from kernel.org

#copying actual configuration from current kernel
cp -v /boot/config-(uname -r) .config

#dev-tools
sudo apt-get install build-essential libncurses-dev bison flex libssl-dev libelf-dev

#configuring the kernel

#text version
make menuconfig

#graphical version
#make xconfig
#make gconfig

#compile
#make
#compile with available threads
make -j $(nproc)

#install kernel modules
sudo make modules_install

#install the linux kernel
sudo make install

#if necesary, update grub
#sudo update-initramfs -c -k (new-kernel-version)
#sudo update-grub

#reboot
