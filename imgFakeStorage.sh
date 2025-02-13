#!/bin/bash

#creates a img and then a loop device

img=$1
size=$2
option=$3 #choose between using dd directly or not

dd if=/dev/zero of=$img bs=1M count=$size status=progress oflag=sync

if [[ "$option" == "d" ]]
then
	sudo dd if=$img of=/dev/loop0 bs=4M conv=fsync status=progress
else
	sudo losetup /dev/loop0 $img
	lsblk /dev/loop0
	echo "Press Enter to detach loop device"
	read
	sudo losetup -d /dev/loop0
fi


