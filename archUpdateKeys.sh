#!/bin/bash
pacman -S gnupg
pacman -Sy archlinux-keyring
pacman-key --populate archlinux
pacman-key --refresh-keys
pacman -Syu
pacman -Scc
pacman -Syuu
