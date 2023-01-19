#!/bin/bash
srch=$1
echo $srch
if [[ -z "$srch" ]]
then
	echo
else
#	find ~/Music -iname "*$srch*" -print0 | xargs -0 -I{} mplayer {}
	find ~/Music -iname "*$srch*" -printf "\"%p\" " | xargs sh -c 'mplayer "$@" < /dev/tty'
fi
