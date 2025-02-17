#!/bin/bash

# Script for setting wallpapers and changing them periodically (every 5 minutes)
swaybg -i "$(find "${HOME}/.wallpaper/." -type f -name '*.jpg' | shuf -n1)" -m fill &
OLD_PID=$!

while true; do
  sleep 300
  swaybg -i "$(find "${HOME}/.wallpaper/." -type f -name '*.jpg' | shuf -n1)" -m fill &
  NEXT_PID=$!
  sleep 5
  kill $OLD_PID
  OLD_PID=$NEXT_PID
done
