#!/bin/sh

action=$1

if [[ "$action" == "inc" ]]; then
  sudo ybacklight -inc 5
elif [[ "$action" == "dec" ]]; then
  sudo ybacklight -dec 5
fi

dunstify "󰃠 Brightness" -h int:value:$(ybacklight -get) -r 169 -t 1000 -u low
