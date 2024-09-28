#!/bin/bash

# Update the system
echo "Updating the system..."
sudo yum update -y

# Remove old versions of Docker (if any)
echo "Removing old Docker versions..."
sudo yum remove -y docker docker-common docker-selinux docker-engine

# Install required packages
echo "Installing required packages..."
sudo yum install -y yum-utils

# Set up the stable repository
echo "Setting up the Docker repository..."
sudo yum-config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo

# Install Docker
echo "Installing Docker..."
sudo yum install -y docker-ce

# Start Docker service
echo "Starting Docker service..."
sudo systemctl start docker

# Enable Docker to start at boot
echo "Enabling Docker to start at boot..."
sudo systemctl enable docker

# Verify Docker installation
echo "Verifying Docker installation..."
sudo docker --version

# Add user to Docker group (optional)
echo "Adding current user to the Docker group..."
sudo usermod -aG docker $USER

echo "Docker installation complete. Please log out and back in for group changes to take effect."
