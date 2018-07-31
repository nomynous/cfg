#!/bin/bash

while read -r timeout cmd
do
    name=($cmd)
    echo "Launching ${name[0]}..."
    nohup $cmd >/dev/null 2>&1 &
    sleep $timeout
done < startup.conf

wmctrl -a nomynous@
resize -s 60 101 >/dev/null 2>&1
