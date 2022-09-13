#!/bin/bash
# Panic Script - shreds everything
# run as root

pass="la consha de su madre"
ch=""

if [[ -z "$1" ]]
then
	printf "\n\n\tWARNING!!!!\n\nThis script shreds everything!!!\n\npassword: "
	read ch
else
	ch="$1"
fi

if [[ $pass != $ch ]]
then
	echo "You dodge a bullet! Bye bye"
	exit $!
fi


printf "\tAre you sure you want to continue?\n\t\t(y/n): "
read ch

if [[ $ch == "n" ]]
then
	echo "You dodge a bullet! Bye bye"
	exit $!
fi

echo "find / -type f -exec shred {} \;"
