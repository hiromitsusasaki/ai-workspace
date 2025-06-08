#!/bin/bash
set -e

docker compose up -d openhands n8n
cd dify/docker
EXPOSE_NGINX_PORT=13003 docker compose up -d
cd ../..
