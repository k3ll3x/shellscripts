#!/bin/bash

#x86 AMD Ryzen Radeon
#https://wiki.archlinux.org/title/AMDGPU

sudo pacman -S mesa vulkan-radeon libva-mesa-driver libva-utils

#use configs/amdgpu.conf in modprob folder
#mkinitcpio.conf
#MODULES=(amdgpu radeon)

#but sometimes it doesnt load the kernel parameters in grub so do it manually

#/etc/default/grub
#GRUB_CMDLINE_LINUX_DEFAULT="quiet splash amdgpu.si_support=1 amdgpu.cik_support=1 radeon.si_support=0 radeon.cik_support=0"
