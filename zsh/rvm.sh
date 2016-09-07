#/usr/bin/env bash
# From https://wiki.archlinux.org/index.php/RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# RVM bash completion
[[ -r /usr/local/rvm/scripts/completion ]] && . /usr/local/rvm/scripts/completion

# Add RVM to PATH for scripting
[[ -d "$HOME/.rvm/bin" ]] && export PATH="$PATH:$HOME/.rvm/bin"
