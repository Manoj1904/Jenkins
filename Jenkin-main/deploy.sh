#!/bin/bash

set -e  # Exit immediately if a command exits with a non-zero status

echo "Stopping existing container (if running)..."
docker stop website-container 2>/dev/null || true

echo "Removing old container..."
docker rm website-container 2>/dev/null || true

echo "Pulling the latest Docker image..."
docker pull manoj1904/devops:latest

echo "Running the new container..."
docker run -d -p 8080:80 --name website-container manoj1904/devops:latest

echo "Deployment successful! Your website is running at http://localhost:8080"
