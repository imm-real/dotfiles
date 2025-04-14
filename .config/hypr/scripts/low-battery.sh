#!/bin/sh

capacity=$(cat /sys/class/power_supply/BAT1/capacity)
status=$(cat /sys/class/power_supply/BAT1/status)

critical=15
warning=30

if [[ "$status" == "Discharging" ]]; then
    if [[ "$capacity" -le "$critical" ]]; then
        dunstify "󰞏 Critical Warning" "Your battery is running low!\nCurrent charge: ${capacity}%" -u critical
        sudo ybacklight -set 10
    elif [[ "$capacity" -le "$warning" ]]; then
        dunstify " Battery Warning" "Your battery is running low!\nCurrent charge: ${capacity}%" -u normal
        sudo ybacklight -set 50
    fi
fi
