#!/bin/bash

# Update package lists
apt-get update

# Install Python 3 distutils if not installed
apt-get install -y python3-distutils || {
  echo "Failed to install python3-distutils"
  exit 1
}

# Install pip if not installed and upgrade it
apt-get install -y python3-pip || {
  echo "Failed to install python3-pip"
  exit 1
}

pip install --upgrade pip || {
  echo "Failed to upgrade pip"
  exit 1
}

# Install additional dependencies
apt-get install -y build-essential || {
  echo "Failed to install build-essential"
  exit 1
}

# Check if distutils is installed correctly
python3 -m ensurepip || {
  echo "Failed to ensure pip with python3"
  exit 1
}
