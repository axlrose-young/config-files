#!/bin/bash

vol=$(awk '{print $2}' <<< $(wpctl get-volume @DEFAULT_SINK@))
first=$(awk -F "." '{print $1}' <<< $vol)
second=$(awk -F "." '{print $2}' <<< $vol)

# formatting
if [[ $first == "0"  ]]; then
	printf " %s%%" "$second" 
else 
	printf "  %s%s%%" "$first" "$second" 
fi
