#!/bin/bash
# Video $1
# Audio $2
# out $3
if [[ -z "$1" || -z "$2" || -z "$3" ]]
then
	exit -1
fi

echo "merge or replace? (m/r):"
read ch

if [[ "$ch" == "m" ]]
then

ffmpeg \
    -i $1 -i $2 \
    -c:v copy \
    -map 0:v -map 1:a \
    -y $3

else

ffmpeg \
    -i $1 -i $2 \
    -c:v copy \
    -map 0:v -map 1:a \
    -y $3

fi
