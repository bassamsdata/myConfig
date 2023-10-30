#!/bin/bash

media=(
	icon=󰎈
	icon.color=$ACCENT_COLOR
	icon.padding_left=4
	icon.padding_right=4
	icon.y_offset=0
	script="$PLUGIN_DIR/media.sh"
	updates=on
	label.padding_left=6
	label.padding_right=6
	label.font="Fira Code:Medium:12.0"
	label.y_offset=0
)

media_dot=(
	icon=􀀁
	icon.color=$TRANSPARENT_ACCENT
	icon.font="$FONT:Black:6.0"
	icon.padding_right=6
	icon.padding_left=8
	icon.y_offset=0
)

media_bracket=(
	background.color=$TRANSPARENT_ACCENT
	background.corner_radius=6
	background.y_offset=4
)

right_bracket=(
	background.color=$PRIMARY_1
	background.corner_radius=6
	background.border_width=2
	background.border_color=$PRIMARY_1
	background.height=28
	background.y_offset=2
)

sketchybar --add item media_dot right \
	--set media_dot "${media_dot[@]}"

sketchybar --add item media right \
	--set media "${media[@]}" \
	--subscribe media media_change

sketchybar --add bracket media \
	--set media "${media_bracket[@]}"

sketchybar --add bracket right_bracket volume battery brew wifi media media_dot \
	--set right_bracket "${right_bracket[@]}"
