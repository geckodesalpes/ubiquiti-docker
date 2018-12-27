#!/bin/bash

# Graceful shutdown, used by trapping SIGTERM
function shutdown {
  echo -n "Stopping unifi-video... " 
  if /usr/sbin/unifi-video --nodetach stop; then
    echo "done."
    exit 0
  else
    echo "failed."
    exit 1
  fi
}
trap shutdown SIGTERM

# Start Unifi Video Controller
/usr/sbin/unifi-video start

while true; do
  sleep 1
done