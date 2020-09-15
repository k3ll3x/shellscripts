#!/bin/bash
for f in *.3gpp; do
	ffmpeg -i ./"$f" -c:a libmp3lame $RANDOM.mp3
done
