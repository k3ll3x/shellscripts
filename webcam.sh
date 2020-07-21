#!/bin/sh
echo "file: "
read f
cd ~/Videos/webcam
#ffmpeg -f x11grab &&
#ffmpeg -f v4l2 -framerate 25 -video_size 640x480 -i /dev/video0 $f.mp4

#ffmpeg -f v4l2 -framerate 25 -video_size 640x480 -i /dev/video0 $f.mp4
ffmpeg -framerate 25 -video_size 640x480 -i /dev/video0 -f alsa -i hw:1 $f.mp4
