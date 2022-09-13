#!/bin/bash
#list format: file '/path/to/file1.wav'
#run: ./concatAudio.sh list filename
ffmpeg -f concat -safe 0 -i $1 -c copy $2
