#!/bin/sh -eu

sudo cp WidevineCdm /opt/
cd /usr/lib/chromium-browser/
sudo ln -s /opt/WidevineCdm WidevineCdm