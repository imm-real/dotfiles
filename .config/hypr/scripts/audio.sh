#!/bin/sh

action=$1

if [[ "$action" == "inc" ]]; then
  pamixer --increase 5
elif [[ "$action" == "dec" ]]; then
  pamixer --decrease 5
fi

dunstify "󰕾 Volume" -h int:value:$(pamixer --get-volume) -r 169 -t 1000 -u low
