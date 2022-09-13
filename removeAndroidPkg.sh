#!/bin/bash
echo "Listing Packages..."
adb shell pm list packages
echo "enter package name: "
read pkgnm
adb shell pm uninstall -k --user 0 pkgnm

