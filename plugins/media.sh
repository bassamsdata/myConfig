#!/bin/bash

STATE="$(echo "$INFO" | jq -r '.state')"

if [ "$STATE" = "playing" ]; then

	TITLE1="$(echo "$INFO" | jq -r '.title')"

	if [ -z "$TITLE1" ]; then
		APP="$(echo "$INFO" | jq -r '.app')"
		MEDIA="$APP"
	else
		TITLE2="$(echo "$TITLE1")"

		ARTIST1="$(echo "$INFO" | jq -r '.artist')"

		if [ -z "$ARTIST1" ]; then
			MEDIA="$(echo "$TITLE2" | cut -c 1-35)"
		else
			ARTIST="$(echo "$ARTIST1" | cut -c 1-15)"
			TITLE="$(echo "$TITLE2" | cut -c 1-19)"
			MEDIA="$(echo "$TITLE" - "$ARTIST")"
		fi

	fi

	sketchybar --set $NAME label="$MEDIA" drawing=on

else

	sketchybar --set $NAME drawing=off

fi

# STATE="$(echo "$INFO" | jq -r '.state')"
#
# if [ "$STATE" = "playing" ]; then
# 	TITLE1="$(echo "$INFO" | jq -r '.title')"
# 	TITLE="$(echo "$TITLE1" | cut -c 1-15)"
# 	ARTIST1="$(echo "$INFO" | jq -r '.artist')"
# 	ARTIST="$(echo "$ARTIST1" | cut -c 1-16)"
# 	MEDIA="$(echo "$TITLE" - "$ARTIST")"
# 	# MEDIA1="$(echo "$INFO" | jq -r '.title + " - " + .artist')"
# 	# MEDIA="$(echo "$MEDIA1" | cut -c 1-30)"
# 	sketchybar --set $NAME label="$MEDIA" drawing=on
# else
# 	sketchybar --set $NAME drawing=off
# fi
