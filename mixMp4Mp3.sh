#!/bin/bash
ffmpeg -i $1 -i $2 -map 0:v -map 1:a -c:v copy -c:a copy output.mp4 -y
