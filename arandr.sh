#!/bin/sh
#set -x
HDMI=$(xrandr -q | grep HDMI1 | awk '{print $2}')
if [ ${HDMI}  = "disconnected" ]
then
	xrandr --output HDMI1 --off
	xrandr --output eDP1 --primary --size 1920x1080 --rotate normal --pos 0x0
else
	xrandr --output HDMI1 --primary --mode 1920x1080 --pos 1920x0 --rotate normal --output eDP1 --mode 1920x1080 --pos 0x0 --rotate normal
fi
