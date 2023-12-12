#!/bin/bash

# Append i3status with custom commands - a keyboard layout
# Script based on https://docs.slackware.com/howtos:window_managers:keyboard_layout_in_i3#displaying_the_active_layout_in_the_panel

i3status | while :
do
        read line

        # Detect active layout, see https://unix.stackexchange.com/a/27688/406369.
        LAYOUT_CODE=$(xset -q | grep --only-matching 'LED mask:.*' | cut -c 12-)
        # Use drop last 2 digits, as they can vary.
        case "${LAYOUT_CODE:0:6}" in
          "000000") LAYOUT="EN" ;;
          "000010") LAYOUT="CZ" ;;
          *) LAYOUT="XX" ;;
        esac

        LAYOUT_JSON="{\"full_text\": \"$LAYOUT\", \"color\":\"#009E00\"}"
        echo "${line/]/,$LAYOUT_JSON]}" || exit 1
done
