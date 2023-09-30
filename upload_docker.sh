#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=n-royy/udacity-microservice

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
echo "Login docker..."
echo $DOCKER_PASSWORD | docker login -u "namnn10" --password-stdin docker.io

# Step 3:
# Push image to a docker repository
docker push $dockerpath
