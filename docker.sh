#!/bin/bash
##############################
# docker.sh
# This script will install docker on your linux ubuntu amd64 system
##############################

apt-get update

# Install linux-image-extra-* packages which allow Docker to use aufs storage
apt-get install -y linux-image-extra-$(uname -r) linux-image-extra-virtual

apt-get update

# Install packages to allow apt to use a repo over HTTPS
apt-get install -y apt-transport-https
apt-get install -y ca-certificates
apt-get install -y curl
apt-get install -y software-properties-common

# Add and verify Docker's offical gpg key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
apt-key fingerprint 0EBFCD88

# Set up the stable repository
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Install Docker
apt-get update
apt-get -y install docker docker-compose

# Create a docker group and add your user
groupadd docker
usermod -aG docker $USER

# Verify if installation is ok
docker run hello-world
