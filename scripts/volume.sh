#!/bin/bash

case "$1" in
	up)
		wpctl set-volume @DEFAULT_SINK@ 0.1+
		;;
	down)
		wpctl set-volume @DEFAULT_SINK@ 0.1-
		;;
	mute)
		wpctl set-mute @DEFAULT_SINK@ toggle
esac

notify-send -r 3 "Volume output" "$(wpctl get-volume @DEFAULT_SINK@)"
