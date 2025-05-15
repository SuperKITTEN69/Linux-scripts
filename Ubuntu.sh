#!/bin/bash

# Update package list
sudo apt update

# Upgrade installed packages
sudo apt upgrade -y

# Install and update Flatpak
sudo apt install -y flatpak
sudo flatpak update -y

# install recommended apps

sudo apt install -y git curl nano vim fastfetch

# Clean unnecessary packages
sudo apt autoremove -y
sudo apt autoclean
