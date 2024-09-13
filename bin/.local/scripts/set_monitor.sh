#!/bin/bash

# Check if HDMI-1-0 is connected
if xrandr | grep "HDMI-1-0 connected"; then
    # HDMI connected: Dual monitor setup
    xrandr --output eDP --mode 3840x2400 --scale 0.5x0.5 --pos 1920x0 --rotate normal --output HDMI-1-0 --primary --mode 1920x1080 --pos 0x0 --rotate normal
else
    # HDMI disconnected: Single monitor setup
    xrandr --output eDP --mode 3840x2400 --scale 0.5x0.5 --primary --pos 0x0 --rotate normal 
    #--output HDMI-1-0 --off
fi

#exec "xrandr --output eDP --mode 3840x2400 --scale 0.5x0.5 --pos 1920x0 --rotate normal --output HDMI-1-0 --primary --mode 1920x1080 --pos 0x0 --rotate normal"

