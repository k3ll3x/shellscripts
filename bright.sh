#!/bin/sh
#xdotool
#xbacklight
#xdotool key XF86MonBrightnessUp
#xdotool key XF86MonBrightnessDown
w1=$1
xbacklight -set $w1
echo Done. Set brightness to $w1 %

