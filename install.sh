#!/bin/bash

# Automated installer for csivanich/dotfiles using dotbot (anishathalye/dotbot)

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DOTBOT_DIR="libs/github/dotbot"
DOTBOT="/bin/dotbot"

CONFIG="install.conf.json"

python2 "${BASEDIR}/${DOTBOT_DIR}/${DOTBOT}" -d "${BASEDIR}" -c "${CONFIG}" $@
