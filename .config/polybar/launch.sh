#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# args
polybar_args='-l error -r'

# Launch bar1 and bar2
#MONITOR=HDMI-3 polybar jeefbar $polybar_args &
MONITOR=eDP-1 polybar jeefbar $polybar_args &

echo "Bars launched..."

