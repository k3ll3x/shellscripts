#!/bin/bash
#oggdec $1 -o - | lame - $2
#for file in *.ogg;do oggdec -o - "$file"|lame -h -V 4 –-vbr-new - "$(basename "$file" .ogg).mp3";done
oggdec $1.ogg
lame -V2 $1.wav $1.mp3
rm -rf $1.wav
