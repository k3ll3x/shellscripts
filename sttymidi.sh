#!/bin/bash

# start ttymidi
ttymidi -s /dev/ttyUSB0 &

# start some ALSA compatible MIDI 
# program (timidity, in this case)
timidity -iA &                    

# list available MIDI input clients
aconnect -i                       

# list available MIDI output clients
aconnect -o                       

# connect
aconnect 128:0 129:0

# ...where 128 and 129 are the client 
# numbers for ttymidi and timidity,
# found with the commands above
