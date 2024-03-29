#!/bin/bash
# list installed groups

for G in $(pacman -Qg | cut -d' ' -f1 | sort -u); do

Sgq=$(pacman -Sgq "$G")		# package list of current group
Qgq=$(pacman -Qgq "$G")		# packages installed from current group

if	[[ $Sgq == $Qgq ]] && \
	grep -q "Running 'pacman.*-S[yu]* $G" /var/log/pacman.log
	then
	echo "${G}"
fi

done
