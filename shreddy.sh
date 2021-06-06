#!/bin/bash
#usage: ./shreddy file
for arg in "$@"
do
	shred -n 30 $arg
	rm $arg
done
