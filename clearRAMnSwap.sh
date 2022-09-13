#!/bin/bash
#Clear PageCache only, dentries and inodes (not recommended in production, m8!)
sync; echo 3 > /proc/sys/vm/drop_caches

#clear swap space
swapoff -a; swapon -a
