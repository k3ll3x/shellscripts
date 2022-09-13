#!/bin/bash
ifconfig | grep inet | awk '{print($2)}' | xargs -L1 ping -c 3
