#!/bin/bash

VPNFILE="$(ls /etc/randomVPN/locations/ | sort -R | tail -n1)"

# Need a log system here

sudo openvpn /etc/randomVPN/locations/$VPNFILE
