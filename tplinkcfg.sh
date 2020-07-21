#!/bin/bash
sudo apt install linux-headers-$(uname -r)
sudo apt-get install dkms
sudo apt-get install wpasupplicant
sudo apt-get install git
mkdir ~/src
cd ~/src
git clone https://github.com/chenhaiq/mt7610u_wifi_sta_v3002_dpo_20130916.git
cd mt7610u_wifi_sta_v3002_dpo_20130916
sudo make
sudo make install
cp RT2870STA.dat /etc/Wireless/RT2870STA/RT2870STA.dat
#reboot
