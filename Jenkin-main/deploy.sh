#!/bin/bash
docker stop website-container || true
docker rm website-container || true
docker pull your-username/capstone:latest
docker run -d -p 8080:80 --name website-container your-username/capstone:latest
