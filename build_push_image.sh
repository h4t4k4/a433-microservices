#!/bin/bash

# Perintah untuk membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image item-app, dan memiliki tag v1.
docker build -t item-app:v1 .
# Melihat daftar image di lokal.
docker images

# Mengubah nama image agar sesuai dengan format Docker Hub.
# docker tag item-app:v1 h4t4/item-app:v1

# Mengubah nama image agar sesuai dengan format GitHub Packages .
docker tag item-app:v1 ghcr.io/h4t4k4/item-app:v1


# Login ke Docker Hub 
# echo $PASSWORD_DOCKER_HUB | docker login -u h4t4 --password-stdin

# Login ke GitHub Package
echo $PAT | docker login ghcr.io -u h4t4k4 --password-stdin

# Mengunggah image ke Docker Hub. 
# docker push h4t4/item-app:v1

# Mengunggah image ke GitHub Packages.
docker push ghcr.io/h4t4k4/item-app:v1