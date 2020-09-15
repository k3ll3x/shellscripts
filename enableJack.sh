#!/bin/bash
pulseaudio --kill  
jack_control  start
read
jack_control exit  
pulseaudio --start
read
ps -aux | grep jackd  
kill -9 jacksPID
