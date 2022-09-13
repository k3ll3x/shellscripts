#!/bin/bash
# $1 file
# e.g: ./tfer filename
curl -F "fileToUpload=@$1" http://oogvangod.000webhostapp.com/tfer/upload.php
echo "http://oogvangod.000webhostapp.com/tfer/0"
