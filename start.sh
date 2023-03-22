#!/bin/bash

DELAY=10

docker compose -p mongo down

docker compose -p mongo up -d

echo "****** Waiting for ${DELAY} seconds for containers to go up ******"
sleep $DELAY

docker compose -p mongo exec mongo1 /scripts/rs-init.sh