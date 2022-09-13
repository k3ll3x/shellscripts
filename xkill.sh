#!/bin/bash
xprop | grep -i pid | awk '{print }' | xargs /usr/bin/kill -9
