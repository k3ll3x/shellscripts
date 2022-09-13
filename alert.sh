#!/bin/bash

icon="/home/nuvhandra/Pictures/xek.png"
sound="/home/nuvhandra/Music/alert.wav"

if [[ $2 ]]
then
	min=$2
	alert=$1
	sleep "$min"m; notify-send -i "$icon" "$alert"; aplay "$sound" & > /dev/null 2>&1
else
	echo "alert: "
	read alert
	echo "minutes: "
	read min
	sleep "$min"m; notify-send -i "$icon" "$alert"; aplay "$sound" &
#	nohup bash /home/nuvhandra/Documents/shell/alert.sh $alert $min & > /dev/null 2>&1
fi
