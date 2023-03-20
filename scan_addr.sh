#!/bin/bash
#nmap or netcat required

cmd="nmap"

if [[ -z "$1" ]]
then
	echo "No host address or port range provided"
	exit
fi

host="$1"
ports="$2"

if [[ -z "$2" ]]
then
	ports="1-8888"
fi

if ! command -v nc &> /dev/null
then
	echo "netcat not found"
	if ! command -v nmap &> /dev/null
	then
		echo "nmap not found"
		exit
	fi
	nmap -Pn $host
fi

nc -z -v $host $ports
