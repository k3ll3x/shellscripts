#!/bin/bash
feh --bg-max ~/Pictures/aphex_twin.jpg &
#xterm alsamixer &
gnome-terminal -e alsamixer
xclock -bg black &
echo "Done."
