#!/bin/bash
echo "Downloading package..."
wget http://deb.debian.org/debian/pool/main/v/v4l2loopback/v4l2loopback-dkms_0.12.5-1_all.deb
sudo dpkg -i v4l2loopback-dkms_0.12.5-1_all.deb
rm v4l2loopback-dkms_*
