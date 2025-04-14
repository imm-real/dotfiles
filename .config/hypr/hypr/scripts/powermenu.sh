#!/bin/sh

option=$(echo "  Shutdown|  Reboot|  Lock|󰤄  Suspend|󰍃  Log Out|󰒲  Hibernate" | rofi -dmenu -sep '|' -p " Power" -l 6)

case "$option" in

    "  Shutdown")
        sudo shutdown -h now
        ;;

    "  Reboot")
        sudo shutdown -r now
        ;;

    "  Lock")
        hyprlock
        ;;

    "󰤄  Suspend")
        sudo systemctl suspend
        ;;
    
    "󰍃  Log Out")
        hyprctl dispatch exit
        ;;

    "󰒲  Hibernate")
        sudo systemctl hibernate
        ;;

    *)
        ;;
esac
