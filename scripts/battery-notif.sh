#!/bin/bash

status=$(cat /sys/class/power_supply/BAT1/status)
charge=$(cat /sys/class/power_supply/BAT1/capacity)

if [[ $status == "Discharging" && $charge -le 20 ]]; then
	notify-send -u critical "Battery Low" "Battery lower than 20%"
fi
