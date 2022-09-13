#!/bin/bash
# ./splitFile.sh 2M file
# to join: cat *.part* > file
split -b $1 $2 "$2.part"
