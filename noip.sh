#!/bin/sh
(( EUID != 0 )) && exec sudo -- "$0" "$@"
cd /usr/local/src
wget http://www.no-ip.com/client/linux/noip-duc-linux.tar.gz
tar xzf noip-duc-linux.tar.gz
cd no-ip-2.1.9
make
make install
sudo /usr/local/bin/noip2 -C
/usr/local/bin/noip2