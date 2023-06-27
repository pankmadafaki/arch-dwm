#!/bin/bash
set -e

default_sink=$(pactl info | grep "Default Sink:" | cut '-d ' -f3)
sinks=$(pactl list short sinks | cut -f2)

# for wrap-around
sinks="$sinks
$sinks"

next_sink=$(echo "$sinks" | awk "/$default_sink/{getline x;print x;exit;}")

pactl set-default-sink "$next_sink"
pactl list short sink-inputs | \
  cut -f1 | \
  xargs -I{} pactl move-sink-input {} "$next_sink"
  echo $next_sink
  new_sink=$(pactl list sinks | grep media.name | cut -d '=' -f 2)
  echo $new_sink
  dunstify "Sink changed to ${next_sink}" &
  
