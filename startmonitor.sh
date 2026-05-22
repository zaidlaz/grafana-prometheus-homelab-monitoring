#!/bin/bash

cd ~/monitoring
echo "starting grafana and prometheus docker containers"
docker compose up -d
docker compose ps -a
echo "binding to tailscale https" 
sudo tailscale serve --bg --set-path / http://127.0.0.1:3000
sudo tailscale serve --bg --set-path /prometheus http://127.0.0.1:9090
tailscale serve status

