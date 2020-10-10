#!/bin/bash
#copy this to /usr/bin m8
notify-send "Shift+PrtScr to copy"
notify-send "Shift+Insert to paste"
xterm -fa 'clean' -fs 14 -e "python3 /home/nuvhandra/Documents/dev/python/scripts/printCharTable.py $1 $2 && read"
