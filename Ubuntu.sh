#!/bin/bash

# Update package list
echo "Updating package list..."
sudo apt update

# Upgrade installed packages
echo "Upgrading installed packages..."
sudo apt upgrade -y

# Install and update Flatpak
echo "Installing and updating Flatpak..."
sudo apt install -y flatpak
sudo flatpak update -y

# Prompt to install recommended apps
read -p "Do you want to install recommended apps? (Y/N): " answer

if [[ "$answer" == "Y" || "$answer" == "y" ]]; then
    echo "Installing recommended apps..."
    sudo apt install -y git curl nano vim fastfetch
else
    echo "Skipping app installation."
fi

# Clean unnecessary packages
echo "Cleaning up unnecessary packages..."
sudo apt autoremove -y
sudo apt autoclean

# Done
echo "Completed, you may now reboot your system!"
