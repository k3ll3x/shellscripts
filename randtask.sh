#!/bin/bash
#select random task from list (file)
notify-send "$(shuf -n 1 ~/rtask)"
