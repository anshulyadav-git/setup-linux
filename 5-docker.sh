#!/bin/bash

# Script to install Docker and its dependencies

echo "Installing Docker and dependencies..."

# Update package list
apt update

# Install Docker
apt install -y docker.io docker-compose-plugin

# Start and enable Docker service
systemctl start docker
systemctl enable docker

echo "Docker installation complete."