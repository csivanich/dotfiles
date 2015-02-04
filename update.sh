#!/usr/bin/env bash

git fetch -vp && \
git rebase origin/master && \
git submodule update --init --recursive && \
./install.sh
