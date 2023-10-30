#!/bin/bash

vpn=(
	script="$PLUGIN_DIR/vpn.sh"
	click_script="$PLUGIN_DIR/toggle_vpn.sh"
	icon=󰒃
	icon.color=$ACCENT_COLOR
	icon.font="$FONT:Regular:14.0"
	icon.padding_left=12
	icon.padding_right=4
	icon.y_offset=0
	label.font="Hack Nerd Font:Regular:14.0"
	label.padding_left=6
	label.padding_right=14
	label.y_offset=0
	update_freq=30
)
# sketchybar --add item vpn right \
# 	--set vpn update_freq=1200 \
# 	icon=󰒃 \
# 	icon.padding_left=16 \
# 	icon.padding_right=4 \
# 	icon.color=0xfff7768e \
# 	icon.y_offset=0 \
# 	label.padding_right=16 \
# 	label.font.family="Hack Nerd Font" \
# 	label.font.style="Regular" \
# 	label.font.size="16" \
# 	label.color=0xfff7768e \
# 	script="$PLUGIN_DIR/vpn.sh" \
# 	click_script="$PLUGIN_DIR/toggle_vpn.sh"

vpn_bracket=(
	background.color=$TRANSPARENT_ACCENT
	background.corner_radius=6
	background.y_offset=4
)

vpn_dot=(
	icon=􀀁
	icon.color=$TRANSPARENT_ACCENT
	icon.font="$FONT:Black:6.0"
	icon.padding_right=10
	icon.padding_left=10
	icon.y_offset=0
)

sketchybar --add item vpn right \
	--set vpn "${vpn[@]}"

sketchybar --add bracket vpn \
	--set vpn "${vpn_bracket[@]}"

sketchybar --add item vpn_dot right \
	--set vpn_dot "${vpn_dot[@]}"
