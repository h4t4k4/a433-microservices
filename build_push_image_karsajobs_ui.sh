#!/bin/bash
docker build -t h4t4/karsajobs-ui:latest .
echo $PASSWORD_DOCKER_HUB | docker login -u h4t4 --password-stdin
docker push h4t4/karsajobs-ui:latest