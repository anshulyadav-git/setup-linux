#!/bin/bash

# Update script for Linux setup
# This script updates the package list and upgrades installed packages

echo "Updating package list..."
sudo apt update

echo "Upgrading packages..."
sudo apt upgrade -y

echo "Update complete."