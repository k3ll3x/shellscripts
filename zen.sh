#!/bin/bash
export DISPLAY=:0
export XDG_RUNTIME_DIR=/run/user/$(id -u)
notify-send -u critical "ZEN"
timeout 20 cvlc /home/nuvhandra/Music/tibet/bowl.wav&

