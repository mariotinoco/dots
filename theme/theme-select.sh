#!/usr/bin/bash

IMG=$(find ~/theme/themes/*.crop.jpg  -printf "%f\n" | rofi -dmenu -p "Select Theme")

~/theme/theme-set.sh $IMG

