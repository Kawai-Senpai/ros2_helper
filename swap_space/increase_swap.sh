#!/bin/bash

# Set non-interactive mode
export DEBIAN_FRONTEND=noninteractive

# Update and upgrade system packages
echo "Updating and upgrading system packages..."
sudo apt update && sudo apt upgrade -y

# Check current swap space
echo "Current swap space:"
sudo swapon --show

# Disable current swap if exists
echo "Disabling current swap space..."
sudo swapoff -a

# Create a new swap file of 8GB (adjust the size as needed)
echo "Creating a new swap file of 16GB..."
sudo fallocate -l 16G /swapfile

# Set the correct permissions
echo "Setting correct permissions for the swap file..."
sudo chmod 600 /swapfile

# Mark the file as swap space
echo "Marking the file as swap space..."
sudo mkswap /swapfile

# Enable the swap file
echo "Enabling the swap file..."
sudo swapon /swapfile

# Verify the new swap space
echo "New swap space:"
sudo swapon --show

# Make the swap file permanent
echo "Making the swap file permanent..."
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab

# Tuning swap settings for better performance
echo "Tuning swap settings for better performance..."
echo 'vm.swappiness=10' | sudo tee -a /etc/sysctl.conf
echo 'vm.vfs_cache_pressure=50' | sudo tee -a /etc/sysctl.conf

# Reload sysctl settings
echo "Reloading sysctl settings..."
sudo sysctl -p

# Clean up unused packages and old kernels
echo "Cleaning up unused packages and old kernels..."
sudo apt autoremove -y

# Install htop for monitoring system performance
echo "Installing htop for monitoring system performance..."
sudo apt install -y htop

# Display system information
echo "Displaying system information..."
echo "System uptime:"
uptime
echo "Memory usage:"
free -h
echo "Disk usage:"
df -h

# Check current swap space
echo "Updated swap space:"
sudo swapon --show

echo "System optimization completed!"

