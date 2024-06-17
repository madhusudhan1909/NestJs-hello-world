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

echo "Deploying to EC2 instance..."

ssh -o StrictHostKeyChecking=no -i C:\MADHU DRIVE\Desktop\New folder\Downloads\pearl-task.pem ubuntu@3.111.144.41 'bash -s' < ./deploy-script.sh

