#!/bin/bash

VPNFILE="$(ls /etc/randomVPN/locations/ | sort -R | tail -n1)"

# Need a log system here
if openvpn /etc/randomVPN/locations/$VPNFILE
then
	sudo echo "$(date) Success Tunnel Open" >> ./logs/"$(date)"-Success-TO.txt
else
	sudo echo "$(date) Error Failed Connect" >> ./logs/"$(date)"-Error-FC.txt
fi
