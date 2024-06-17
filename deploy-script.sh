#!/bin/bash

set -e

# Navigate to project directory
cd /root/hello-world

# Pull latest changes from the repository
git pull origin master

# Install dependencies
npm install

# Build project
npm run build

# Restart the systemd service
sudo systemctl restart hello-world

