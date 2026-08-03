#!/bin/bash

CHOICE=$(printf "Lock screen\nShutdown\nReboot\nHibernate\nExit dwm" | rofi -dmenu)

case $CHOICE in
	"Lock screen") # Yet to implemet lock screen
		echo "locks screen"
		;;
	Shutdown)
		systemctl poweroff
		;;
	Reboot)
		systemctl reboot
		;;
	Hibernate)
		systemctl hibernate
		;;
	"Exit dwm")
		killall dwm
		;;
esac
