#!/bin/bash

stat=$(< /sys/class/power_supply/BAT1/status)
val=$(< /sys/class/power_supply/BAT1/capacity)

if [ $stat == "Charging"  ]; then
	printf "󰂄 %s%%" "$val"
elif [ $stat == "Discharging"  ]; then
	printf "󰁾 %s%%" "$val"
elif [ $stat == "Not charging"  ]; then 
	printf "󱈏 %s%%" "$val"
elif [ $stat == "Full"  ]; then
	printf "󰁹 %s%%" "$val"
else 
	printf "󰂑 %s%%" "$val"
fi
