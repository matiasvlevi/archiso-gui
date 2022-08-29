#!/bin/bash

D1=$(xrandr | grep -e " connected .*[0-9][0-9][0-9][0-9]x[0-9][0-9][0-9][0-9]+0+0" | awk '{print $1}')
D2=$(xrandr | grep -e " connected .*[0-9][0-9][0-9][0-9]x[0-9][0-9][0-9][0-9]+[0-9][0-9][0-9][0-9]+0" | awk '{print $1}')

xrandr --output $D2 --left-of $D1 

echo "$D2 <-> $D1"
