#!/bin/bash

echo "Installing AWS CLI"

echo "Installing kubectl"

echo "Installing docker"
sudo yum install -y docker
sudo usermod -a -G docker ec2-user
newgrp docker

wget https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) 
sudo mv docker-compose-$(uname -s)-$(uname -m) /usr/local/bin/docker-compose
sudo chmod -v +x /usr/local/bin/docker-compose
sudo systemctl enable docker.service
sudo systemctl start docker.service


echo "Installing Helm"

echo "Installing terraform "
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
sudo yum install -y terraform


