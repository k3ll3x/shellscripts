#!/bin/bash

upower -d | grep -E "percentage"
v2="false"
ten="    percentage:          10%"

if [ $v2 == "false" ]; then
	v1=$(upower -d | grep -E "percentage")
	if [ $v1 == $ten ]; then
		echo "Warning 10% of battery left!"
		v2="true"
	fi
else
	echo "Warning Connect PC to power, ese!"
fi

