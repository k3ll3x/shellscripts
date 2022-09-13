#!/bin/bash

usage(){
	echo "usage: ./convertFileEncoding.sh UTF-8 ISO-8859-15 < input > output"
	exit $!
}

if[[ -z "$4" ]]
then
	usage()
fi

iconv -f $1 -t $2 < $3 > $4
