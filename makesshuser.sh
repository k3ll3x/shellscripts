#!/bin/bash

#run as sudo

if [[ "$1" == "" ]]
then
	echo "Username:"
	read username
else
	username=$1
fi

echo ${username}

useradd -m -d /home/${username} -s /bin/bash ${username}
passwd ${username}
# ensure the directory ir owned by the new user
chown -R ${username}:${username} /home/${username}/.ssh

# make sure only the new user has permissions
chmod 700 /home/${username}/.ssh
chmod 600 /home/${username}/.ssh/authorized_keys

