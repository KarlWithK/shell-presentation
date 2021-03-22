#!/bin/bash

chosen=$(fd . ~/Pictures/Wallpapers/ | rofi -dmenu -p "Pick a wallpaper:")

[ "$chosen" != "" ] || exit

xwallpaper --zoom "$chosen"
