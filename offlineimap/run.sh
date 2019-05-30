#! /bin/bash

# Build rc file from env vars
envsubst < /root/.offlineimaprc.tmplt > /root/.offlineimaprc

# sync then wait 1mins
while true; do offlineimap -u Noninteractive.Quiet; sleep 1m; done 
