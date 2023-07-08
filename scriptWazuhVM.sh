#!/bin/bash

#2nd VM Debian for Wazuh Indexer, Dashboard and Manager
#This script must be executed before scriptAnsibleVM.sh is executed on the Ansible server

#Install openssh-server
apt-get install openssh-server


#Start SSH service
systemctl start sshd

#permit Root login on ssh server
sed -i "s/#PermitRootLogin prohibit-password/PermitRootLogin yes/" /etc/ssh/sshd_config


#Start SSH service
systemctl restart sshd

#Create .ssh directory and set permissions
mkdir .ssh
chmod 700 .ssh/

#Create authorized_keys file and set permissions
touch .ssh/authorized_keys
chmod 644 .ssh/authorized_keys
