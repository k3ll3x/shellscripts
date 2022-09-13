#!/bin/bash
# https://www.youtube.com/watch?v=TsuY4o2zLVQ
sudo pacman -Sy v4l2loopback-utils gphoto2 ffmpeg linux-headers
sudo modprobe v4l2loopback exclusive_caps=1 max_buffer=2
gphoto2 --auto-detect
#gphoto2 --capture-image-and-download
gphoto2 --stdout --capture-movie | ffpeg -i - -vcodec rawvideo -pix_fmt yuv420p -threads 0 -f v4l2 /dev/video0
