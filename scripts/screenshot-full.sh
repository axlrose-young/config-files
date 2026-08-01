#!/bin/bash

# To take a screenshot

# Location to store ss
DIR="$HOME/pictures/screenshots"

# Naming convention to store ss
FILE=$(date "+%Y-%m-%d_%H-%M-%S").png

SS="$DIR/$FILE"

# Takes ss
maim "$SS"

# Gets the ss in clipboard
xclip -selection clipboard -t image/png -i $SS 
