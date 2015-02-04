#!/usr/bin/env zsh

# ============ Exports =================

export EDITOR='vim' # Default editor is vim
export ARCHFLAGS="-arch x86_64" # Stock Arch Linux
test -d "/usr/bin/vendor_perl" && PATH="$PATH:/usr/bin/vendor_perl" # If Perl is found, add to PATH
test -d "$HOME/bin" && PATH="$PATH:$HOME/bin" # If we have a local bin, add it
