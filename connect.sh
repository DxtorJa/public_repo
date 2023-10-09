#!/bin/bash

# Define the URL for the new client.ovpn file
OVPN_URL="https://raw.githubusercontent.com/DxtorJa/public_repo/main/client.ovpn"

# Define the path to the OpenVPN client configuration directory
OVPN_DIR="/etc/openvpn/client"

# Define the name of the configuration file
OVPN_CONFIG="client.ovpn"

# Stop the OpenVPN service (optional, depending on your setup)
#sudo systemctl stop openvpn

# Remove the previous client.ovpn file
sudo rm -f "$OVPN_DIR/$OVPN_CONFIG"

# Download the new client.ovpn file
sudo wget -O "$OVPN_DIR/$OVPN_CONFIG" "$OVPN_URL"

# Start the OpenVPN service (optional, depending on your setup)
#sudo systemctl start openvpn

# Connect to OpenVPN using the new configuration file
sudo openvpn --config "$OVPN_DIR/$OVPN_CONFIG"
