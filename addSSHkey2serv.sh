#!/bin/bash

# Add ssh public key to remote host authorized keys

#    Put the public key in .ssh/authorized_keys2
#    Change the permissions of .ssh to 700
#    Change the permissions of .ssh/authorized_keys2 to 640

#cat .ssh/id_rsa.pub | ssh b@B 'cat >> .ssh/authorized_keys'


usage(){
	echo "$0 public_key user@remote"
	exit $!
}

pubkey=$1
userhost=$2

if [ -z "$1" ] || [ -z "$2" ]
then
	usage
fi

cat $pubkey | ssh $userhost 'cat >> .ssh/authorized_keys'
