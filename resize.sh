#!/bin/bash
echo "Older Image: "
read oimg
echo "Newer Image: "
read nimg
echo "Percent % : "
read per
convert -resize $per% $oimg $nimg
