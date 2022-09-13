#!/bin/bash
# Simple chat system for when Skype is fucked.
nick=${1?Usage: $0 nickname (e.g. $0 biturd)}
chan=/tmp/yapchan
echo "^D to exit chat." >&2
tail -F "$chan" & tailpid=$!
trap 'kill "$tailpid"' 0
while IFS='' read -er line; do echo "<$nick> $line"; done >> "$chan"
