#!/usr/bin/python3

import os, sys

if len(sys.argv) < 2:
	port = input('port to kill: ')
else:
	port = sys.argv[1]

pid = os.popen('netstat.exe -ano | findstr.exe :' + port).read().split('\n')[0].split(' ')[-1]

print('Killing process with PID ' + pid + '...')

os.popen('taskkill.exe /PID ' + pid + ' /F')
