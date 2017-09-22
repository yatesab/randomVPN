#!/bin/bash
PATH=$PATH:/etc/randomVPN
filecount="$(ls -1 ./locations | grep ".ovpn" | wc -l)"

if [ $filecount -ne 0 ]
then
	VPNFILE="$(ls /etc/randomVPN/locations/ | sort -R | tail -n1)"

	if ifconfig | grep "tun" &> /dev/null
	then
		./log.sh "TunnelOpen_Error"
	else
		# Need a log system here
		if openvpn /etc/randomVPN/locations/$VPNFILE
		then
			./log.sh "TunnelOpen_Success"
		else
			./log.sh "FailedConnection"
		fi
	fi
else
	./log.sh "NoConfig"
fi
