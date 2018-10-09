#!/bin/sh

while true; do
  # Remove all unused images UNTIL default 24h
  docker image prune -a -f --filter "until=$UNTIL"
  # Sleep defualt INTERVAL 24h
  sleep $INTERVAL
done