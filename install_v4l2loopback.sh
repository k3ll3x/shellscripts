#!/bin/bash
sudo apt-get remove v4l2loopback-dkms
sudo apt-get install build-essential libelf-dev linux-headers-$(uname -r) unzip
wget https://github.com/umlaeute/v4l2loopback/archive/master.zip
unzip master.zip
cd v4l2loopback-master
make
sudo make install
sudo depmod -a
sudo modprobe v4l2loopback
