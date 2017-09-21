#!/bin/bash

VPNFILE="$(ls /etc/randomVPN/locations/ | sort -R | tail -n1)"

# Need a log system here
if openvpn /etc/randomVPN/locations/$VPNFILE
then
	./log.sh "TunnelOpen_Success"
else
	./log.sh "FailedConnection"
fi
