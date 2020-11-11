#!/bin/bash
echo "Enter a folder to make this stuff:"
read folder
cd $folder
sudo apt-get install git cmake build-essential
sudo apt-get install libusb-1.0-0-dev
git clone git://git.osmocom.org/rtl-sdr.git
cd rtl-sdr/
mkdir build
cd build
cmake ../ -DINSTALL_UDEV_RULES=ON
make
sudo make install
sudo ldconfig
sudo cp ../rtl-sdr.rules /etc/udev/rules.d/
echo "Test bundle? (y/n):"
read ch
if [[ $ch == "y" ]]
then
	rtl_test -s 2400000
fi
