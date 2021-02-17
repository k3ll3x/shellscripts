#!/bin/bash
if [ "$(setxkbmap -query | grep 'layout' | awk '/\w+/ {print $2}')" == "us" ];
then
	nofify-send 'Setting latam'
	setxkbmap latam
else
	notify-send 'Setting us'
	setxkbmap us
fi
