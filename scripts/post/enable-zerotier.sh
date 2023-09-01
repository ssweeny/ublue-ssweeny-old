#!/usr/bin/env bash

set -oue pipefail

# Enable the ZeroTier service
systemctl enable zerotier-one
