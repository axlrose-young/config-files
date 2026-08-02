#!/bin/bash

FILE=$(date "+%Y-%m-%d_%H-%M-%S").png
DIR="$HOME/pictures/screenshots"

SS="$DIR/$FILE"

case "$1" in
	full)
		maim "$SS"
		;;
	select)
		maim -s "$SS"
		;;
esac
xclip -selection clipboard -t image/png -i $SS
notify-send "SS" "Screenshot copied to clipboard"

