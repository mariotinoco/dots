#!/usr/bin/bash

wal -i ~/theme/themes/$1

. "${HOME}/.cache/wal/colors.sh"

xrdb -merge ${HOME}/.cache/wal/colors.Xresources

bspc config normal_border_color   "$color1"
bspc config active_border_color   "$color7"
bspc config focused_border_color  "$color7"
bspc config presel_feedback_color "$color1"

