#!/bin/bash

# Automated installer for csivanich/dotfiles using dotbot (anishathalye/dotbot)

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DOTBOT_DIR="libs/github/dotbot"
DOTBOT="dotbot"

CONFIG="install.conf.json"

"${BASEDIR}/${DOTBOT_DIR}/${DOTBOT}" -d "${BASEDIR}" -c "${CONFIG}" $@
