#!/bin/bash
#usage: ./appendText2File.sh "text" file.txt
#usage: ./appendText2File.sh file.txt
	#user input is waited for entry
if [[ $2 ]]
then
#	echo 'Two arguments'
	text=$2
	filename=$1
elif [[ $1 ]]
then
#	echo 'One argument'
	echo '>'
	read text
	filename=$1
else
#	echo 'No arguments'
	echo 'Filename: '
	read filename
	echo '>'
	read text
fi
echo $text >> $filename
