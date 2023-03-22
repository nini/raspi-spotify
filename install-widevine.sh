#!/bin/sh -eu

# Copy plugin to /opt/ and symlink it
echo "Copy Widevine plugin for chromium"
sudo cp -r WidevineCdm /opt/
cd /usr/lib/chromium-browser/
sudo ln -s /opt/WidevineCdm WidevineCdm