#!/bin/bash

#accelerate video to N factor

usage(){
	printf "$0 int filename\n"
}

speed=2
filename=""

if [[ $# -z ]]
then
	printf "factor (1..x): "
	read speed
	printf "filename: "
	read filename
elif [[ $# -eq 2 ]]
	speed=$1
	filename=$2
else
	printf "filename: "
	read filename
fi

ffmpeg -i $2 -filter:v "setpts=PTS/$1" output.mkv
