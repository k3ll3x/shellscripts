#!/bin/sh
#lcpsi | grep Network
ifconfig wlan0 down
sleep 3
ifconfig wlan0 up
