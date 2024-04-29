#!/bin/bash

if [[ -z "$1" ]]
then
	echo "usage: $0 user@remote"
	exit
fi

#ssh -L 9090:localhost:9090 -N -f $1 &
ssh -N -D 9090 $1 &
pid=$!
printf "pid: \033[32m${pid}\033[0m\nPress enter to kill process...\n"
read
kill -9 $pid
