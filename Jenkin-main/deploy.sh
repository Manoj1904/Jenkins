#!/bin/bash
docker stop website-container || true
docker rm website-container || true
docker pull manoj1904/devops:latest
docker run -d -p 8080:80 --name website-container manoj1904/devops:latest
