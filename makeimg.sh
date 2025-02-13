#!/bin/bash
#image.img, size (1G)
qemu-img create -f qcow2 $1 $2
