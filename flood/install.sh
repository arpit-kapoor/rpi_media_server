#!/usr/bin/env bash

# npm dependencies
sudo apt-get install -y npm
sudo npm install -g node-gyp

# Download flood
cd /opt
sudo git clone https://github.com/jfurrow/flood.git

# Build
cd /opt/flood
sudo npm install –-unsafe-perm=true
sudo npm run build
sudo npm start

# Change owner to flood
sudo adduser --disabled-password flood
sudo chown -R flood:flood /opt/flood

# Configure the systemd service
sudo cp flood.service /etc/systemd/system/
sudo systemctl enable flood