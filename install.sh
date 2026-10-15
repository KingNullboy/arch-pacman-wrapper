#!/bin/bash

set -e

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
sudo install -m 0755 "$SCRIPT_DIR/d-pacman" /usr/local/bin/d-pacman
echo "Installed d-pacman."
