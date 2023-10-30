#!/bin/zsh

time=(
	script="$PLUGIN_DIR/time.sh"
	icon=􀐫
	icon.color=$ACCENT_COLOR
	icon.font="$FONT:Bold:14.0"
	icon.padding_left=8
	icon.padding_right=4
	icon.y_offset=0
	label.font="Fira Code:Medium:14.0"
	label.padding_left=6
	label.padding_right=14
	label.y_offset=0
	update_freq=30
)

date=(
	script="$PLUGIN_DIR/calendar.sh"
	label.font="$FONT2:Medium:14.0"
	label.padding_left=6
	label.padding_right=14
	label.y_offset=0
	update_freq=30
)

time_dot=(
	icon=􀀁
	icon.color=$TRANSPARENT_ACCENT
	icon.font="$FONT:Black:6.0"
	icon.padding_right=10
	icon.padding_left=10
	icon.y_offset=0
)

time_dot2=(
	icon=􀀁
	icon.color=$TRANSPARENT_ACCENT
	icon.font="$FONT:Black:6.0"
	icon.padding_right=10
	icon.padding_left=10
	icon.y_offset=0
)

time_bracket=(
	background.color=$TRANSPARENT_ACCENT
	background.corner_radius=6
	background.y_offset=4
)

center_bracket=(
	background.color=$PRIMARY_1
	background.corner_radius=6
	background.border_width=2
	background.border_color=$PRIMARY_1
	background.height=24
)

sketchybar --add item time_dot centre \
	--set time_dot "${time_dot[@]}"

sketchybar --add item time centre \
	--set time "${time[@]}" \
	--subscribe time system_woke \
	--add item time_icon right \
	--set time_icon "${time_icon[@]}"

sketchybar --add item date centre \
	--set date "${date[@]}"

sketchybar --add bracket center_bracket time_dot date \
	--set center_bracket "${center_bracket[@]}"

sketchybar --add bracket time \
	--set time "${time_bracket[@]}"
