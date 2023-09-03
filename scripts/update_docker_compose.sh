#!/bin/bash

# Define the path to your docker-compose.yml file
COMPOSE_FILE="docker-compose.yml"

# Pull the latest images using docker-compose
echo "Pulling the latest images..."
docker-compose -f "$COMPOSE_FILE" pull

# Recreate containers with the latest images, remove orphans, and run in the background
echo "Recreating containers with the latest images..."
docker-compose -f "$COMPOSE_FILE" up -d --build --remove-orphans

# Clean up old images
echo "Cleaning up old Docker images..."
docker image prune -f

echo "Docker update completed."
