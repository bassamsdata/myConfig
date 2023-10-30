#!/bin/sh

wifi=(
    script="$PLUGIN_DIR/wifi.sh"
    icon=􀙇
    icon.font="$FONT:Bold:13.0"
    icon.padding_right=10
    icon.padding_left=6
    icon.y_offset=0
)


sketchybar --add item wifi right \
           --set wifi "${wifi[@]}" \
           --add item wificon right \
           --set wificon "${wifi_icon[@]}" \

