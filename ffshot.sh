#!/bin/sh
op=$1
f=$2
if [ $op == "2d" ]; then
	#ffmpeg -f video4linux2 -i /dev/v4l/by-id/usb-0c45_USB_camera-video-index0 -vframes 1 $2.jpeg
	ffmpeg -f video4linux2 -i /dev/video0 -vframes 1 $2.jpeg
else
	#ffmpeg -f video4linux2 -i /dev/v4l/by-id/usb-0c45_USB_camera-video-index0 -vframes 2 $2.jpeg
	ffmpeg -f video4linux2 -i /dev/video0 -vframes 2 $2.jpeg
fi
