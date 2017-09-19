#!/bin/bash

PATH=$PATH:/etc/randomVPN

if [ $# -ne 0 ]
then
	#Tunnel is already open error
	if [ $1 = "TunnelOpen" ]
  	then
    		echo "Tunnel is already open"
    		echo "$(date) TunnelOpen Error \n" >> ./logs/"$(date)"-Error-TO.txt
  	#No configuration files found in folder
  	elif [ $1 = "NoConfig" ]
	then
		echo "No config files were found"
		echo "$(date) NoConfig Error \n" >> ./logs/$DATE-Error-NOCONF.txt
	elif [ $1 = "FailedConnection" ]
	then
		echo "Connection to the VPN Server failed"
		echo "$(date) FailedConnection Error \n" >> ./logs/$DATE-Error-FC.txt
  	fi
fi
