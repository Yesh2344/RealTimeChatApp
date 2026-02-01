#!/bin/bash

# Install Node.js and dependencies
echo "Installing Node.js and dependencies..."
sudo apt-get update
sudo apt-get install nodejs
sudo npm install ws

# Install curl
echo "Installing curl..."
sudo apt-get install curl