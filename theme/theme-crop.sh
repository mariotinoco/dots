#!/usr/bin/bash

SRC=~/theme/themes/$(find ~/theme/themes/*.jpg  -printf "%f\n" | grep -v crop | rofi -dmenu -p "Select Theme")
DST=${SRC/jpg/crop.jpg}

echo SRC: $SRC
echo `magick identify $SRC`

echo ""

echo DST: $DST
convert $SRC -geometry 2560x1600^ -gravity center -crop 2560x1600+0+0 -quality 90 $DST
echo `magick identify $DST`

