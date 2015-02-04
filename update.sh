#!/usr/bin/env bash

git fetch -vp && \
git rebase origin/"$(git rev-parse --abbrev-ref HEAD)" && \
git submodule update --init --recursive && \
./install.sh
