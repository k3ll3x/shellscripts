#!/bin/bash
#gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled true
dconf write /org/gnome/settings-daemon/plugins/color/night-light-enabled true
