#!/bin/bash
#ttymidi -s /dev/ttyUSB0 -b $1
sudo ttymidi -s $1 -v -n midifox
