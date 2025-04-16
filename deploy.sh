#!/bin/bash
# Build Docker image
docker build -t your-app-name .

# Push Docker image to registry (e.g., Docker Hub)
docker push your-app-name

# SSH to production server and deploy the container
ssh user@your-server-ip "docker pull your-app-name && docker-compose up -d"
