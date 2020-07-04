#!/bin/bash
$list = $1
ffmpeg -f concat -safe 0 -i $list -c copy out.mp3
