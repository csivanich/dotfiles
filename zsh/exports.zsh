#!/usr/bin/env zsh

# ============ Exports =================

# Default editor is vim
export EDITOR='vim'

# Default terminal is xterm
export TERMINAL=xterm

# Stock Arch Linux
export ARCHFLAGS="-arch x86_64"

# If Perl is found, add to PATH
test -d "/usr/bin/vendor_perl" && PATH="$PATH:/usr/bin/vendor_perl"

# If we have a local bin, add it
test -d "$HOME/bin" && PATH="$PATH:$HOME/bin"

# If we have a local ruby bin, add it
test -d "$HOME/.gem/ruby/1.9.1/bin/" && PATH="$PATH:$HOME/.gem/ruby/1.9.1/bin/"
test -d "$HOME/.gem/ruby/2.2.0/bin/" && PATH="$PATH:$HOME/.gem/ruby/2.2.0/bin/"
