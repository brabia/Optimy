#!/bin/bash
echo "Updating apt..."
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common
echo "Adding the GPG key for the official Docker repository..."
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
apt-cache policy docker-ce
echo "Installing Docker CE..."
sudo apt -y install docker-ce
echo "Done! Installing docker compose..."
sudo apt install docker-compose
echo "Check if docker is running: sudo systemctl status docker"
exit 1