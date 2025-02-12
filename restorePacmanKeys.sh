#!/bin/bash
#gpg --list-keys
#gpg --check-signatures
#gpg --refresh-keys
printf "\tRefreshing keyring...\n"
sudo pacman -Sc --noconfirm
sudo rm -r /etc/pacman.d/gnupg
#sudo chmod 700 /etc/pacman.d/gnupg
#sudo chown -R root:root /etc/pacman.d/gnupg
printf "\tInit and populate...\n"
sudo pacman-key --init
sudo pacman-key --populate archlinux
#sudo pacman-key --refresh-keys
#sudo pacman -S archlinux-keyring --noconfirm
#sudo rm -rf /var/lib/pacman/sync/*
#sudo rm -rf /var/cache/pacman/pkg/*
#sudo pacman -Syy --noconfirm
#sudo pacman -S --needed pacman archlinux-keyring --noconfirm
#sudo pacman-key --list-keys
#journalctl -xe
#df -h /
printf "\tUpdate system...\n"
sudo pacman -Sy --needed archlinux-keyring --noconfirm
sudo pacman -Su --noconfirm
