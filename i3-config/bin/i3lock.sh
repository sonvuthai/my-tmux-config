#!/bin/sh
IMG=/home/han-pc-sonvt36/Documents/bg.png
scrot "$IMG"
#convert "$IMG" -blur 2x2  -charcoal 1 -colorize 70% "$IMG"
#convert "$IMG" -blur 1x1  -implode 1 -colorize 20% "$IMG"
#convert "$IMG" -pointsize 50 -fill white -draw 'text 300,200 "TxGVNN"' "$IMG"
#convert "$IMG" -scale 20% -scale 500% "$IMG"
#convert "$IMG" ~/.config/i3/bin/lock.jpg -gravity center -composite -matte "$IMG"
if ! i3lock -i "$IMG"; then
    rm "$IMG"
    return 1
fi
xset dpms force off
rm "$IMG"
