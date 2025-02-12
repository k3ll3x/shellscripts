#!/bin/bash
#ffmpeg -i $1 -vf "scale=iw*0.7:ih*0.7" $2
ffmpeg -i $1 -vf "scale=1280:-2" $2
