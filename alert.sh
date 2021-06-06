#!/bin/bash
if [[ $2 ]]
then
	min=$2
	alert=$1
	sleep "$min"m; notify-send -i /home/nuvhandra/Pictures/xek.png "$alert"; aplay /home/nuvhandra/Music/bassalert.wav
else
	echo "alert: "
	read alert
	echo "minutes: "
	read min
	nohup bash /home/nuvhandra/Documents/shell/alert.sh $alert $min & > /dev/null 2>&1
fi
