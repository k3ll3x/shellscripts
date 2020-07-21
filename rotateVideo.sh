#!/bin/bash
vid=$1
nvid=$2
rotation=$3
#mencoder -ovc lavc -vop rotate=1 -oac copy vid -o nvid
#mencoder -ovc lavc -vf rotate=$rotation -oac copy $vid -o $nvid
mencoder -ovc lavc -vf rotate=$rotation -oac pcm $vid -o $nvid
