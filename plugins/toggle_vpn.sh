#!/bin/sh

VPN_INFO=$(scutil --nc list | rg "^\*" | tail -n 1)
VPN_NAME=
if [[ $VPN_INFO != "" ]]; then
	VPN_NAME=$(echo $VPN_INFO | sed -E 's/.*"(.*)".*/\1/')
	osascript <<EOF
        tell application "$VPN_NAME"
          activate
  end tell
EOF
fi
