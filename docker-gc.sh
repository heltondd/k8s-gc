#!/bin/sh

while true; do
  # Remove all unused images UNTIL default 24h
  docker image prune -a --filter "until=$UNTIL" -f
  # Sleep default INTERVAL 24h
  sleep $INTERVAL
done
