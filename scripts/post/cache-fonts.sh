#!/usr/bin/env bash

set -oue pipefail

# Cache the Ubuntu fonts which were added manually
fc-cache -f /usr/share/fonts/ubuntu
