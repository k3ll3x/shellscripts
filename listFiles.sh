#!/bin/bash
#usage: ./self extension
#e.g:	./listFiles.sh .wav
rm list
for file in $(ls *$1 | grep $1)
do
	echo "$(pwd)/$file" >> list
done
