#!/bin/bash
sudo apt update -y &&
sudo apt install -y nginx
echo "Hello, this is Optimy" > /var/www/html/index.html