#!/bin/bash

displaynum=5
counter=0
while [ $counter -lt $displaynum ]
do
        if [ -e /etc/randomVPN/logs/log$counter.txt ]
        then
                cat /etc/randomVPN/logs/log$counter.txt
        fi
        let counter=counter+1
done
