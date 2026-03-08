#!/bin/bash

# Script to install Docker and its dependencies

echo "Checking Docker installation..."

if command -v docker &> /dev/null; then
    echo "Docker is already installed."
else
    echo "Installing Docker and dependencies..."
    # Update package list
    apt update
    # Install Docker
    apt install -y docker.io docker-compose-plugin
fi

# Start and enable Docker service
systemctl start docker
systemctl enable docker

echo "Docker is ready."