#!/bin/bash

val=$(< /sys/class/backlight/nvidia_0/brightness)

if [[ val -gt 60 ]]; then
	printf "󰃚 %s" "$val" 
else
	printf "󰃜 %s" "$val"
fi
