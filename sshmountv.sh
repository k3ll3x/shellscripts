#!/bin/bash

#mount
sshfs $user@$server:$path $lpath

#umount
fusermount -u $lpath
