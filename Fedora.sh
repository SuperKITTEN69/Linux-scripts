#!/bin/bash

# Update package list and upgrade installed packages
sudo dnf upgrade --refresh -y

# Install and update Flatpak
sudo dnf install -y flatpak
sudo flatpak update -y

# Install recommended apps
sudo dnf install -y git curl nano vim fastfetch

# Clean unnecessary packages
sudo dnf autoremove -y
sudo dnf clean all
