#!/bin/bash
# $1 image.img
# $2 path
# e.g: ./mountImg.sh image.img /mnt/drive
mount -o loop $1 $2
