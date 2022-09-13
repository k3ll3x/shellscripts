#!/bin/bash

#source: https://kx.studio/Repositories

# Install required dependencies if needed
sudo apt-get install apt-transport-https gpgv

# Remove legacy repos
sudo dpkg --purge kxstudio-repos-gcc5

# Download package file
wget https://launchpad.net/~kxstudio-debian/+archive/kxstudio/+files/kxstudio-repos_10.0.3_all.deb

# Install it
sudo dpkg -i kxstudio-repos_10.0.3_all.deb
