#!/bin/sh
sudo apt-get install openssh-server

sudo cp /etc/ssh/sshd_config /etc/ssh/sshd_config.factory-defaults
sudo chmod a-w /etc/ssh/sshd_config.factory-defaults

sudo gedit /etc/ssh/sshd_config

sudo restart ssh
