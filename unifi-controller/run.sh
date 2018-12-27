#!/bin/bash

# Graceful shutdown, used by trapping SIGTERM
function shutdown {
  echo -n "Stopping unifi-network-controller... " 
  if /etc/init.d/unifi stop -eq 0; then
    echo "done."
    exit 0
  else
    echo "failed."
    exit 1
  fi
}
trap shutdown SIGTERM

# Start controller service
service unifi start

while true; do
  sleep 1
done