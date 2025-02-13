#!/bin/bash
# iso, mem 2G
#qemu-system-x86_64 -boot d -cdrom $1 -m $2 -soundhw all -net user -net nic
#qemu-system-x86_64 -boot d -cdrom $1 -m $2 -hda disk.img -net user -net nic
qemu-system-x86_64 -boot d -cdrom $1 -m $2 -net user -net nic
