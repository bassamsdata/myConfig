#!/bin/sh

if scutil --nc list | grep "^\*" | grep Connected >>/dev/null; then
	LABEL=
else
	LABEL=
fi

sketchybar --set $NAME label=$LABEL
