#!/bin/bash
#dd bs=4M if=2018-04-18-raspbian-stretch.img of=/dev/sdX conv=fsync
dd bs=4M if=$1 of=$2 conv=fsync
