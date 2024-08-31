#!/bin/bash

# Update package lists
apt-get update

# Install Python 3 distutils if not installed
apt-get install -y python3-distutils

# Install pip if not installed and upgrade it
apt-get install -y python3-pip
pip install --upgrade pip

# Install additional dependencies
apt-get install -y build-essential
