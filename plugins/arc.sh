#!/bin/zsh

source "$CONFIG_DIR/colors.sh"

if [ "$SENDER" = "front_app_switched" ]; then
	FRONT_APP="$INFO"
	case "$FRONT_APP" in
	"Arc")
		sketchybar --set arc icon.color="$ACCENT_COLOR"
		sketchybar --set terminal icon.color="$WHITE"
		;;
	"Alacritty")
		sketchybar --set arc icon.color="$WHITE"
		sketchybar --set terminal icon.color="$ACCENT_COLOR"
		;;
	*)
		sketchybar --set arc icon.color="$WHITE"
		sketchybar --set terminal icon.color="$WHITE"
		;;
	esac
fi

# NOTE: I was doing something didn't work but it works for 1 app only.
# if [ "$SENDER" = "front_app_switched" ]; then
# 	FRONT_APP="$INFO"
# 	if [ "$FRONT_APP" = "Arc" ]; then
# 		COLOR=$ACCENT_COLOR
# 		sketchybar --set arc icon.color="$COLOR"
# 	elif [ "$FRONT_APP" = "Alacritty" ]; then
# 		COLOR=$ACCENT_COLOR
# 		sketchybar --set terminal icon.color="$COLOR"
# 	else
# 		sketchybar --set arc icon.color="$WHITE"
# 		sketchybar --set terminal icon.color="$WHITE"
# 	fi
# fi
