#!/bin/bash

# Function to print the status
print_status() {
    echo
    echo "===================================="
    echo "$1"
    echo "===================================="
    echo
}

# Function to uninstall applications and configurations

# Check if uninstall option is provided
if [[ "$1" == "-u" ]]; then
    uninstall
    exit 0
fi

# Update system
print_status "Updating system..."
sudo dnf update -y

# Function to install applications and configurations

# Print completion message
print_status "Gamer module setup complete. Please restart your system for all changes to take effect."
