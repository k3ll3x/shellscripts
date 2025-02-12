#!/bin/bash
for i in $(arch-audit | awk '{print $1}')
do
	pacman -Syu $i --noconfirm
done
