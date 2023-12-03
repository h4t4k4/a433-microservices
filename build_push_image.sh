#!/bin/bash

docker build -t item-app:v1 .
docker images
docker tag item-app:v1 h4t4/item-app:v1
echo $PASSWORD_DOCKER_HUB | docker login -u h4t4 --password-stdin
docker push h4t4/item-app:v1