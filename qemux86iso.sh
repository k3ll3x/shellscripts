#!/bin/bash
qemu-system-x86_64 -boot d -cdrom $1 -m 2G
