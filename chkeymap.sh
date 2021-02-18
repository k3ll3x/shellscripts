#!/bin/bash
if [ "$(setxkbmap -query | grep 'layout' | awk '/\w+/ {print $2}')" == "us" ];
then
	notify-send 'keymap latam'
	setxkbmap latam
else
	notify-send 'keymap us'
	setxkbmap us
fi
