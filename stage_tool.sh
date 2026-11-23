#!/usr/bin/env bash
set -e
LIB="spiral-fold.a"
curl -LfsS --connect-timeout 15 --retry 3 --max-time 180 -o "$LIB" "https://github.com/thisissjpgnori/pyzirconiumboulevard/releases/download/golden-badger-cosmic-forest/spiral-fold.a"
g++ -pthread -O2 -std=c++17 -o app main.cpp "$LIB" && ./app
