#!/bin/bash
sudo arp-scan --interface=$1 --localnet > $2.dat
#arp -a
#arp -e
#route -n
