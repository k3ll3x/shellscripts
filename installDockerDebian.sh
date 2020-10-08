#!/bin/bash

#uninstall older versions

sudo apt-get remove docker docker-engine docker.io containerd runc

#setup the repository

sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common

#add Docker's offical GPG key

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

echo "Checking fingerprint: 9DC8 5822 9FC7 DD38 854A E2D8 8D81 803C 0EBF CD88"

sudo apt-key fingerprint 0EBFCD88

#stable repo

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
