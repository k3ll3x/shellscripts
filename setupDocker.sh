#!/bin/bash
#run as root
if [ "$EUID" -ne 0 ]
	then echo "Please run as root"
	exit
fi


apt install -y docker docker-compose
groupadd docker
usermod -aG docker $USER
newgrp
