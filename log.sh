#!/bin/bash

PATH=$PATH:/etc/randomVPN
DATE="$(date)"

#checks to see if anything was passed in.
#If nothing was passed we exit with nothing done.
if [ $# -ne 0 ]
then
	#Runs if no arguments were passed into the program
	if [ $1 = "NoArg" ]
	then
		echo "No Arguments Passed"
		echo "Examples:"
		echo "-l - Show logs"
		echo "-s - Start Tunnel"
	#If tunnel is successfull in opening then this log will be created.
	elif [ $1 = "TunnelOpen_Success" ]
	then
		echo "Tunnel Successfully Opened"
		echo "$(date) Tunnel Opened Success" >> ./logs/"$DATE"-Success-TO.txt
	#Tunnel is already open error
	elif [ $1 = "TunnelOpen_Error" ]
  	then
    		echo "Tunnel is already open"
    		echo "$(date) TunnelOpen Error \n" >> ./logs/"$DATE"-Error-TO.txt
	#If the connection fails while trying to establish a tunnel
	elif [ $1 = "FailedConnection" ]
	then
		echo "Tunnel failed to connect"
		echo "$(date) Error Failed Connect" >> ./logs/"$DATE"-Error-FC.txt
  	#No configuration files found in folder
  	elif [ $1 = "NoConfig" ]
	then
		echo "No config files were found"
		echo "$(date) NoConfig Error \n" >> ./logs/"$DATE"-Error-NOCONF.txt
	elif [ $1 = "Reboot" ]
	then
		echo "Rebooting System"
		echo "$(date) System Reboot" >> ./logs/"$DATE"-System-RE.txt
	fi
fi
