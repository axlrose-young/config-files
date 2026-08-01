#!/bin/bash

# Dir path
DIR="$HOME/pictures/screenshots"

# File path 
FILE="$(date "+%Y-%m-%d_%H-%M-%S").png"

SS="$DIR/$FILE"

# select ss
maim -s $SS

xclip -selection clipboard -t image/png -i $SS
