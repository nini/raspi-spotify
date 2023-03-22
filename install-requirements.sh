#!/bin/sh -eu

echo "Installing required dependencies"

sudo apt update
sudo apt install -y chromium-browser xvfb x11vnc tmux