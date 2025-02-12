#!/bin/bash
#dd if=/dev/zero of=$1 bs=1 count=1 conv=notrunc
dd if=/dev/random of=$1 bs=1 count=1 conv=notrunc
