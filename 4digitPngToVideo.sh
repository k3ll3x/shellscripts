#!/bin/bash
#only argument output video file with extension
ffmpeg -r 60 -f image2 -s 1920x1080 -i "%04d.png" -vcodec libx264 -crf 25  -pix_fmt yuv420p $1
