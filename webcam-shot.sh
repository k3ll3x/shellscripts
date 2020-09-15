#!/bin/bash
img=$1
fswebcam -r 640x480 --jpeg 85 -D 1 $img
