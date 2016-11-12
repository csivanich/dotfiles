#!/usr/bin/env zsh

# ============ Exports =================

# Default editor is vim
export EDITOR='vim'

# Default terminal is xterm
export TERMINAL=xterm

# If Perl is found, add to PATH
test -d "/usr/bin/vendor_perl" && PATH="$PATH:/usr/bin/vendor_perl"

# If we have a local bin, add it
test -d "$HOME/bin" && PATH="$HOME/bin:$PATH"
