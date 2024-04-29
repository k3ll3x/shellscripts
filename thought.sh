#!/bin/bash
if [[ $1 == "read" ]]
then
	less $HOME/thz
	exit -1
fi
echo "Random Thought: "
read t
if [[ $t == "goodbYE!" ]]
then
	echo "goodbye..."
	sleep 3
	echo "chin!!"
	exit -2
fi

echo $t >> $HOME/thz

