#!/bin/zsh

# source "$CONFIG_DIR/items/front_app.sh"

arc=(
	icon=":arc:"
	icon.color=$WHITE
	icon.font="sketchybar-app-font:Regular:14.0"
	icon.padding_right=6
	icon.y_offset=0
	padding_right=6
	padding_left=6
	script="$PLUGIN_DIR/arc.sh"
	click_script='open -a "Arc"'
)

arc_dot=(
	icon=􀀁
	icon.color=$TRANSPARENT_ACCENT
	icon.font="$FONT:Black:6.0"
	icon.padding_right=8
	icon.padding_left=2
	icon.y_offset=0
)

sketchybar --add item arc left \
	--set arc "${arc[@]}" \
	--subscribe arc front_app_switched

# sketchybar --add item arc_dot left \
# 	--set arc_dot "${arc_dot[@]}"
