#!/bin/bash
#usage: ./imagesToVideo.sh format fps output
#eg: ./imagesToVideo.sh %4d.png 25 out.mp4
ffmpeg -r 1/5 -i $1 -c:v libx264 -vf fps=$2 -pix_fmt yuv420p $3
