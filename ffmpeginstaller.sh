#!/bin/sh
cd /usr/local/src

wget http://mirror.ffmpeginstaller.com/old/scripts/ffmpeg7/ffmpeginstaller.7.4.tar.gz

tar -zxvf  ffmpeginstaller.7.4.tar.gz

cd ffmpeginstaller.7.4

./install
