#!/bin/bash
#use: ./killPort.sh port/protocol
#eg: ./killPort.sh 8080/tcp
fuser -k $1
