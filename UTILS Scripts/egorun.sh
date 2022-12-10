#!/bin/bash
SERVICE="ego.x86_64"
while true
do
	
	if pgrep -x "$SERVICE" >/dev/null
	then
    	echo "$SERVICE is running"
	else
   	echo "$SERVICE stopped, restarting"
	sudo /var/www/server/ego.x86_64 -launch-as-server &
	fi
done
