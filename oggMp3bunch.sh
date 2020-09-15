#!/bin/bash
for f in *.ogg; do
	ffmpeg -i ./"$f" $RANDOM.mp3
done
