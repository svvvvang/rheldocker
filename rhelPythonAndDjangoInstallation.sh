#!/bin/bash

# Update the system
echo "Updating the system..."
sudo dnf update -y

# Install Python 3 and pip
echo "Installing Python 3 and pip..."
sudo dnf install -y python3 python3-pip

# Verify Python installation
echo "Verifying Python installation..."
python3 --version
pip3 --version

# Install Django
echo "Installing Django..."
pip3 install Django

# Verify Django installation
echo "Verifying Django installation..."
django-admin --version

echo "Python 3 and Django installation complete!"
