#!/usr/bin/env sh

# wait for i3 to start
sleep 2

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# args
polybar_args='-l error -r'

# Launch bar1 and bar2
#MONITOR=DP-1 polybar jeefbar $polybar_args &
MONITOR=XWAYLAND0 polybar jeefbar $polybar_args &

echo "Bars launched..."

