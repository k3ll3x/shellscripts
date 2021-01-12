#!/bin/bash

#dependencies
sudo apt-get install -y g++ libgtk-3-dev libfreetype6-dev libx11-dev libxinerama-dev libxrandr-dev libxcursor-dev mesa-common-dev libasound2-dev freeglut3-dev libxcomposite-dev libcurl4-openssl-dev
sudo add-apt-repository -y ppa:webkit-team/ppa && sudo apt-get install libwebkit2gtk-4.0-37 libwebkit2gtk-4.0-dev

echo "Install Projucer? (y/n): "
read ch

if [[ $ch == 'y']]
	echo "folder to download projucer: "
	read folder
	cd $folder
	wget https://github.com/juce-framework/JUCE/releases/download/6.0.5/juce-6.0.5-linux.zip
	unzip juce-6.0.5-linux.zip
	cd juce*
	./Projucer
fi
