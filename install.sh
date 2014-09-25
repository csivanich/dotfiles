#!/bin/bash

# Automated installer for csivanich/dotfiles using dotbot (anishathalye/dotbot)

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DOTBOT_DIR="/libs/github/dotbot"
DOTBOT="/bin/dotbot"

CONFIG="install.conf.json"

# Ensure those systems using python2/3 get the correct version
PYTHON="python"
[ $(which python2) ] && PYTHON="python2"

$PYTHON "${BASEDIR}${DOTBOT_DIR}${DOTBOT}" -d "${BASEDIR}" -c "${CONFIG}" $@
