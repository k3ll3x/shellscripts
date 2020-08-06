#!/bin/bash

#Serial port readable to all users
#sudo chmod a+rw /dev/ttyUSB0

ttymidi -s /dev/ttyUSB0 -v -n MIDIFOX
