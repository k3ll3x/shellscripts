#!/bin/bash
cd /home/k3ll3x/Documents/tor/Browser/TorBrowser/Data/Tor
a=1
while [a>0]
do
	a=$(shuf -i 1-2 -n 1)
	if [$a=="1"]; then
		sed -i '4 i\ExitNodes {US}' torrc
	else
		if [$a=="2"]; then
			sed -i '4 i\ExitNodes {PL}' torrc
		else
			#Nothing
	fi
done
