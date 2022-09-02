#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath="simlogo/uda-micr0"

# Step 2:  
# Authenticate & tag
docker tag micservice:latest $dockerpath
echo "Docker ID and Image: $dockerpath"
docker login

# Step 3:
# Push image to a docker repository
docker push $dockerpath