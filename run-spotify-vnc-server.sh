#!/bin/sh -eu

echo "Setting VNC password"
# VNC password: 123123
x11vnc -storepasswd 123123 /tmp/vncpass

echo "Starting chromium with spotify"
# start chromium browser with spotify
tmux new-session -d -s spotify-session 'xvfb-run --listen-tcp --server-num 44  -s "-ac -screen 0 1024x768x16" chromium-browser open.spotify.com'
sleep 5

echo "Starting VNC server on port 4544"
# run x11vnc on port 4544
tmux new-session -d -s vnc-session 'x11vnc -rfbport 4544  -display :44 -forever -auth /tmp/xvfb.auth'