#!/bin/bash
#dd if=/dev/sdx of=/path/to/image
dd if=$1 of=$2 bs=4M status=progress oflag=sync
