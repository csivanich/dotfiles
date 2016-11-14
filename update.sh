#!/usr/bin/env bash

git fetch -vp --tags && \
git rebase origin/"$(git rev-parse --abbrev-ref HEAD)" && \
git submodule update --init --recursive && \
./install.sh && \
echo "Update succeeded" || \
echo "Update failed, check output"
