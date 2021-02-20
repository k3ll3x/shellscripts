#!/bin/bash
if [ "$(setxkbmap -query | grep 'layout' | awk '/\w+/ {print $2}')" == "us" ];
then
	notify-send -i keyboard 'keymap latam'
	setxkbmap latam
else
	notify-send -i keyboard 'keymap us'
	setxkbmap us
fi
