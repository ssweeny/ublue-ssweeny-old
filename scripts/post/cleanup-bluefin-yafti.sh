#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

# This image is based on bluefin, which adds its own yafti config. yafti also
# adds its own, and the result is a hot mess where both try to compete for
# first boot supremacy. Remove the bluefin one in favor of the ublue version.
BLUEFIN_YAFTI_CONFIG="/usr/etc/yafti.yml"
BLUEFIN_FIRSTBOOT="/usr/etc/profile.d/bluefin-firstboot.sh"

rm -rf "${BLUEFIN_YAFTI_CONFIG}"
rm -rf "${BLUEFIN_FIRSTBOOT}"
