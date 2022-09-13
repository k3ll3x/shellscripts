#!/bin/bash
#run as root
apt-get clean && apt-get autoremove
sudo apt-get -f install
dpkg --configure -a
