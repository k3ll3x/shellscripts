#!/bin/bash
#cpulimit when im programming and watching stuff

#first arg is percentage of cpuusage and the rest of the args is the list

#default
perc="30"
list="firefox code"

if [[ -n "$1" ]]
then
	perc=$1
fi

#the rest of the args append to list
for i in "${@:2}"
do
	list+="$i "
done

for i in $list
do
	echo -e "\e[93m$i @ $perc\e[0m"
	cpulimit -l $perc -e $i &
done

read
pkill -P $$
