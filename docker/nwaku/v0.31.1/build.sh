#!/bin/bash

# Create a new builder instance if it doesn't exist
docker buildx create --name multiarch --node multiarch0 --use

# Build and push the multi-architecture image
docker buildx build --platform linux/amd64,linux/arm64 \
  -t zorlin/nwaku:v0.31.1 \
  -f Dockerfile \
  --push .
