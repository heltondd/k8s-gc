#!/bin/sh

while true; do
  # Remove all unused images INTERVAL default 24h
  docker image prune -a -f --filter "until=$UNTIL"
  sleep $INTERVAL
done