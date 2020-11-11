#!/bin/bash
ffmpeg -f video4linux2 -i /dev/video0 /tmp/ghoa.jpg
ffmpeg -loop 1 -re -i /tmp/ghoa.jpg -f v4l2 -vcodec rawvideo -pix_fmt yuv420p /dev/video1
#ffmpeg -re -i /tmp/ghoa.jpg -f v4l2 /dev/video1
