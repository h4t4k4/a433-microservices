#!/bin/bash
# Build Docker image dari Dockerfile
docker build -t ghcr.io/h4t4k4/order-service:latest .

docker build -t h4t4/order-service:latest .

# login ke docker hub
echo $PASSWORD_DOCKER_HUB | docker login -u h4t4 --password-stdin

# push image ke Dockerhub
docker push h4t4/order-service:latest

# login ke github package
echo $PASSWORD_GITHUB_PACKAGE | docker login ghcr.io -u h4t4k4 --password-stdin

# push image ke Github package
docker push ghcr.io/h4t4k4/order-service:latest