#!/bin/bash

case "$1" in
	up)
		brightnessctl set 10+
		;;
	down)
		brightnessctl set 10-
		;;
esac

notify-send -r 1 "Brightness" "$(brightnessctl g)"
