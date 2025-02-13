#Armbian setup script

#!/bin/bash
set -e

USERNAME="yourusername"
PASSWORD="yourpassword"
SSH_PUB_KEY="your_public_ssh_key"
SOFTWARE_LIST="git"
GREETING="Lasciate ogni speranza, voi ch'entrate"

echo "Creating user $USERNAME"
adduser "$USERNAME"
echo "$USERNAME:$PASSWORD" | chpasswd

echo "Configuring SSH"
mkdir -p /home/"$USERNAME"/.ssh
echo "$SSH_PUB_KEY" >> /home/"$USERNAME"/.ssh/authorized_keys
chown -R "$USERNAME":"$USERNAME" /home/"$USERNAME"/.ssh
chmod 700 /home/"$USERNAME"/.ssh
chmod 600 /home/"$USERNAME"/.ssh/authorized_keys
sed -i 's/^PermitRootLogin yes/PermitRootLogin no/' /etc/ssh/ssh_config
sed -i 's/^#PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/ssh_config
systemctl restart sshd

echo "Installing Docker"
apt-get update
apt-get remove docker docker-engine docker.io containerd runc
apt-get install ca-certificates curl gnupg lsb-release
mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
apt update
apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin iptables fuse-overlayfs

echo "Installing essentials"
apt-get install -y fish tmux htop
chsh -s /usr/bin/fish $USERNAME
chsh -s /usr/bin/fish

mkdir -p /home/root/.config/fish/functions/
mkdir -p /home/$USERNAME/.config/fish/functions/
printf "function fish_greeting\n\tprintf (set_color F60)$GREETING\nend\n" > /home/root/.config/fish/functions/fish_greeting.fish
cp /home/root/.config/fish/functions/* /home/$USERNAME/.config/fish/functions

echo "Installing software: $SOFTWARE_LIST"
apt-get update
apt-get install -y $SOFTWARE_LIST
apt-get upgrade

echo "Setup complete!"
