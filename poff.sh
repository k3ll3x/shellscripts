#!/bin/bash
export DISPLAY=:0

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

op=$1

function countdown(){
	printf "\n\n\t\t${RED}CountDown:${GREEN}\n\n\n"
	for (( i=$op; i>0; i-- ))
	do
		printf "\t$i"
		sleep 1m
	done
	poweroff
}

if [[ -z "$1" ]]
then
	printf "\n\n\t\t${RED}You sure?${GREEN}\n\n\n\t"
	read ch
	if [[ "$ch" == "y" ]]
	then
		poweroff
	elif [[ "$ch" == "t" ]]
	then
		read op
		countdown
	elif [[ "$ch" == "r" ]]
	then
		reboot
	elif [[ "$ch" == "p" ]]
	then
		printf "Work: "
		read work
		printf "Rest: "
		read rest
		printf "freq: "
		read freq
		python3 /home/nuvhandra/Documents/dev/python/scripts/pomodoro.py $work $rest $freq
		sleep 3
	elif [[ "$ch" == "x" ]]
	then
		xhost +
		su - .x -c 'export DISPLAY=:0; nohup xdg-open . </dev/null &>/dev/null &'
		op=90
		countdown
	fi
else
	notify-send "To much screen, aye?"; sleep 3&
	countdown
fi
