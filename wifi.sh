#!/bin/bash
ifconfig wlan0 up
echo "Scanning"
iwlist wlan0 scan | grep ESSID
echo "ESSID: "
read essid
sudo iwconfig wlan0 essid $essid #key s:"wireless_key"
sudo dhclient wlan0
