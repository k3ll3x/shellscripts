#!/bin/bash
dd if=/dev/zero of=$1 bs=1M count=8k status=progress
chmod 0600 $1
#mkswap -U clear $1
mkswap $1
swapon $1
free -h
echo "$1 none swap defaults 0 0" >> /etc/fstab
# echo "$1 none swap sw 0 0" >> /etc/fstab
echo "Remove swapfile"
read
swapoff $1
free -h
rm -f $1
nano /etc/fstab
