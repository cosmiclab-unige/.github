#!/bin/sh
# Renders the profile banner (light and dark) with headless Chrome.
set -e
cd "$(dirname "$0")"
for theme in light dark; do
  google-chrome --headless=new --disable-gpu --hide-scrollbars \
    --allow-file-access-from-files --force-device-scale-factor=2 \
    --window-size=1280,360 --screenshot="../profile/img/banner-$theme.png" \
    "file://$PWD/banner.html?$theme" 2>/dev/null
done
