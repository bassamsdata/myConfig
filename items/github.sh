#!/bin/bash

POPUP_CLICK_SCRIPT="sketchybar --set \$NAME popup.drawing=toggle"

github_bell=(
	icon=$BELL
	icon.font="$FONT:Bold:13.0"
	icon.padding_left=10
	icon.y_offset=0
	label=$LOADING
	label.padding_left=6
	label.padding_right=6
	label.font="Fira Code:Medium:13.0"
	label.y_offset=0
	popup.align=right
	script="$PLUGIN_DIR/github.sh"
	click_script="$POPUP_CLICK_SCRIPT"
)

github_template=(
	drawing=off
	background.corner_radius=12
	padding_left=7
	padding_right=7
	icon.background.height=2
	icon.background.y_offset=-12
)

sketchybar --add item github_bell right \
	--set github_bell "${github_bell[@]}" \
	--subscribe github_bell mouse.entered \
	mouse.exited \
	mouse.exited.global \
	\
	--add item github_template popup.github_bell \
	--set github_template "${github_template[@]}"
