#!/bin/bash

usage(){
	echo "$0 input.audio output.wav"
	exit #!
}

if [[ -z "$1"  &&  -z "$2" ]]
then
	usage
fi

ffmpeg -i $1 -acodec pcm_s16le -ac 1 -ar 16000 $2
