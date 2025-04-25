#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
# polybar-msg cmd quit
# Otherwise you can use the nuclear option:
killall -q polybar

# Launch left bar, right bar, and middle bar
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log /tmp/polybar3.log
# polybar base 2>&1 | tee -a /tmp/polybar1.log & disown
polybar left 2>&1 | tee -a /tmp/polybar1.log & disown &
polybar right 2>&1 | tee -a /tmp/polybar2.log & disown &
polybar middle 2>&1 | tee -a /tmp/polybar3.log & disown &

echo "Bars launched..."
