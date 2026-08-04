#!/bin/bash

dev=$(bluetoothctl devices Connected)
num=$(awk '{print $2}' <<< "$dev")

info=$(awk -F ":" '{print $2}' <<< $(bluetoothctl info $num | grep -i "name"))

if [ "$dev" != "" ]; then
	printf "󰂯%s" "$info"
else 
	printf "󰂲"
fi
