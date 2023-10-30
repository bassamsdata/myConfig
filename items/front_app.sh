#!/bin/zsh

FRONT_APP_SCRIPT='[ "$SENDER" = "front_app_switched" ] && sketchybar --set $NAME label="$INFO"'

front_app=(
	icon.drawing=off
	label.font="$FONT2:Medium:14.0"
	associated_display=active
	label.padding_left=6
	label.padding_right=10
	label.y_offset=0
	script="$FRONT_APP_SCRIPT"
)

left_bracket=(
	background.color=$PRIMARY_1
	background.corner_radius=6
	background.border_width=2
	background.border_color=$PRIMARY_1
	background.height=24
)

front_app_bracket=(
	background.color=$TRANSPARENT_ACCENT
	background.corner_radius=6
	background.y_offset=4
)
space_bracket=(
	background.color=$TRANSPARENT_ACCENT
	background.corner_radius=6
	background.height=28
	background.y_offset=2
)

sketchybar --add item front_app left \
	--set front_app "${front_app[@]}" \
	--subscribe front_app front_app_switched

sketchybar --add bracket left_bracket apple.logo terminal arc front_app \
	--set left_bracket "${left_bracket[@]}"

sketchybar --add bracket front_app \
	--set front_app "${front_app_bracket[@]}"

sketchybar --add bracket space_bracket spaces_1.label spaces_1.tex spaces_1.web spaces_1.cafe spaces_1.music \
	--set space_bracket "${space_bracket[@]}"
