#!/bin/bash

PATH=$PATH:/etc/randomVPN
source ./settings.sh

#Displays the last logs files created
#number is determined by the settings file
ls ./logs | head -n $displaynum
