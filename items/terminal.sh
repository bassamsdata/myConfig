#!/bin/bash

terminal=(
	icon=":terminal:"
	icon.color=$WHITE
	icon.font="sketchybar-app-font:Regular:15.0"
	icon.padding_right=6
	icon.y_offset=0
	padding_right=6
	padding_left=8
	script="$PLUGIN_DIR/arc.sh"
	click_script='open -a "Alacritty"'
)

terminal_dot=(
	icon=􀀁
	icon.color=$TRANSPARENT_ACCENT
	icon.font="$FONT:Black:6.0"
	icon.padding_right=8
	icon.padding_left=2
	icon.y_offset=0
)
sketchybar --add item terminal left \
	--set terminal "${terminal[@]}" \
	--subscribe terminal front_app_switched

sketchybar --add item terminal_dot left \
	--set terminal_dot "${terminal_dot[@]}"
