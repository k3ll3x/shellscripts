#!/bin/sh
cd ~/Videos/gameplays
#ffmpeg -f x11grab &&
#ffmpeg -f v4l2 -framerate 25 -video_size 640x480 -i /dev/video0 $1.mp4

ffmpeg -video_size 1024x768 -framerate 25 -f x11grab -i :0.0+100,200 -f alsa -ac 2 -i pulse $1.mkv &
#ffmpeg -f x11grab -r 30 -s 1280x720 -i :0.0+0,24 -threads 0 -f alsa -ac 2 -i pulse -preset ultrafast -crf 0 $1.mkv & #-filter_complex volume=0 &

#ffmpeg -f alsa -i pulse -f x11grab -r 25 -s 1280x720 -i :0.0+0,24 -acodec pcm_s16le -threads 0 $1.mkv &

#ffmpeg -f x11grab -r 30 -s 1280x800 -i :0.0+100,200 -f alsa -ac 2 -pulse $1.mkv

#ffmpeg -i $1.mkv -vpre hq -crf 22 -threads 0 $1.mp4 &
#rm $1.mkv &
