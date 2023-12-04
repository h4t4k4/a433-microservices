#!/bin/bash

docker build -t item-app:v1 .
docker images
docker tag item-app:v1 ghcr.io/h4t4k4/item-app:v1
# echo $PASSWORD_DOCKER_HUB | docker login -u h4t4 --password-stdin
echo $PAT | docker login ghcr.io -u h4t4k4 --password-stdin
docker push ghcr.io/h4t4k4/item-app:v1