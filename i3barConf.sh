#!/bin/bash

# colors from 30 to 37

BLACK="30m"
RED="31m"
GREEN="32m"
YELLOW="33m"
GREY="34m"
PURPLE="35m"
ORANGE="36m"
WHITE="37m"

# echo -e "\033[$color"
#TIME=$(date | awk '{print $4}')
#mem=$(cat /proc/meminfo | grep MemFree)
#ip=$(ifconfig | grep Bcast | awk '{print $2}' | awk -F: '{print $2}')

for(( ;; ))
do

#Ctrl + C

ip=$(ip addr show dev wlan0 | grep "inet " | awk '{ print $2 }' | awk -F/ '{print $1}')
bat=$(upower -d | grep -E "percentage" | awk '{print $2}')
TIME=$(date) # | awk '{print $4}')

echo -e "$bat | $ip | $(whoami) | $TIME |"
done
