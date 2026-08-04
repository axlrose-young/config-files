#!/bin/bash

stat=$(nmcli -t dev status | grep -m 1 "wlo1" | awk -F ":" '{print $3}')

if [ "$stat" == "connected" ]; then
	printf "󰖩 "  
elif [ "$stat" == "disconnected" ]; then
	printf "󱚼 "
else 
	printf "󱚾 "
fi
