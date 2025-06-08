#!/bin/bash
set -e

docker compose down
cd dify/docker
docker compose down
cd ../..
