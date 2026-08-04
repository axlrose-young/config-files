#!/bin/bash

status=$(cat /sys/class/power_supply/BAT1/status)
charge=$(cat /sys/class/power_supply/BAT1/capacity)

# acts to check if already notified
tmp="/tmp/bat-check-file"

if [[ $status == "Discharging" && $charge -le 20 ]]; then
	if [[ ! -f "$tmp" ]]; then
		notify-send -u critical "Battery Low" "Battery lower than 20%"
		touch "$tmp"
	fi
else
	rm -f "$tmp"
fi
