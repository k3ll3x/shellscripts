#!/bin/sh
w1=$1
if [$1 == ""]
then
	echo "Touchpad manager..."
	echo "Enable touchpad 0, diable touchpad 1: "
	read s
	synclient TouchpadOff=$s
else
	synclient TouchpadOff=$w1
fi
