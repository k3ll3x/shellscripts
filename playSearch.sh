#!/bin/bash
srch=$1
echo "Search: $srch"
if [[ -z "$srch" ]]
then
	echo
else
#	find ~/Music -iname "*$srch*" -print0 | xargs -0 -I{} mplayer {}
#	find ~/Music -iname "*$srch*" -printf "\"%p\" " | xargs sh -c 'echo "$@"; mplayer "$@" < /dev/tty'
#	find ~/Music -iname "*$srch*" -print0 | xargs -0 -o mplayer
#	find ~/Music -iname "*$srch*" -print0 | shuf | xargs -0 -o 
	find ~/Music -iname "*$srch*" -print0 | shuf | cat
	sleep 1
fi
