#!/bin/bash

cd ~/monitoring
echo "stopping grafana and prometheus docker containers"
docker compose stop
docker compose ps -a
echo "unbinding tailscale https"
tailscale serve reset
tailscale serve status

