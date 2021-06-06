#!/bin/bash
#echo "Older Image: "
#read oimg
#echo "Newer Image: "
#read nimg
#echo "Percent % : "
#read per

#usage: ./resizeImg image newimage percent
convert -resize $3% $1 $2
