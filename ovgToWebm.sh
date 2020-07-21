#!/bin/bash
ffmpeg -i $1 -b:v 8M -r 60 $2
