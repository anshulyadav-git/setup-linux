#!/bin/bash

# Script to install PostgreSQL

echo "Installing PostgreSQL..."

# Update package list
apt update

# Install PostgreSQL
apt install -y postgresql postgresql-contrib

# Start and enable PostgreSQL service
systemctl start postgresql
systemctl enable postgresql

echo "PostgreSQL installation complete."