#!/bin/bash
srch=$1
echo "Search: $srch"
if [[ -z "$srch" ]]
then
	find ~/Music/** | less
else
	find ~/Music -iname "*$srch*"
	echo "press enter to exit"
	read
fi
