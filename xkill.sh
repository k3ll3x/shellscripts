#!/bin/bash
export DISPLAY=:0.0
xprop | grep -i pid | awk '{print }' | xargs /usr/bin/kill -9
