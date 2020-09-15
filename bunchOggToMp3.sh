#!/bin/bash

for f in *.ogg; do ffmpeg -i "$f" "${f%.ogg}.mp3"; rm "$f"; done
