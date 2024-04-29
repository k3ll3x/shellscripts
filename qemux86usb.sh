#!/bin/bash
#qemu-system-x86_64 -m 2G -usb -device usb-uhci -drive file=$1,if=none,id=drive0 -device usb-storage,drive=drive0
qemu-system-x86_64 -m 2G -usb -drive file=$1,if=none,id=drive0 -device usb-storage,drive=drive0
