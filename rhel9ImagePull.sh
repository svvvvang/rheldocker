#!/bin/bash

# Ensure Docker is running
echo "Checking Docker service..."
sudo systemctl start docker

# Log in to the Red Hat registry (prompt for credentials)
echo "Logging into the Red Hat registry..."
sudo docker login registry.redhat.io

# Pull the RHEL 9 image
echo "Pulling the RHEL 9 image..."
sudo docker pull registry.redhat.io/ubi9/ubi:latest

# Run a RHEL 9 container interactively
echo "Running a RHEL 9 container..."
sudo docker run -it registry.redhat.io/ubi9/ubi:latest /bin/bash

# Instructions to verify the RHEL version
echo "Inside the container, you can verify the RHEL version with:"
echo "cat /etc/redhat-release"
echo "To exit the container, type 'exit'."
