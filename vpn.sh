#!/bin/bash

cd ~/Documents/vpn/
username="vpnbook"
password="9wenr57f"
read -sp "Enter Sudo Password: " sudopassword

/usr/bin/expect << EOF

spawn sudo openvpn vpnbook-euro1-tcp443.ovpn
expect "password for $USER: "
send "$sudopassword\r"
expect "Enter Auth Username: "
send "$username\r"
expect "Enter Auth Password: "
send "$password\r"
expect "$ "

EOF
