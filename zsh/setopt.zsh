#!/usr/bin/env zsh

# ========== History ============

SAVEHIST=1000
HISTFILE=~/.zsh_history
setopt HIST_IGNORE_DUPS
setopt completealiases
setopt hist_ignore_dups
setopt hist_ignore_space
setopt interactivecomments
setopt extended_history # save timestamp and duration of command
setopt append_history # shared history across sessions
setopt inc_append_history # add as run, not just on exit
setopt share_history # imports history from other sessions while running

# ============ Completion =============

zstyle ':completion:*' menu select # Arrow key support for selection
setopt always_to_end # On complete move cursor to end of word
setopt auto_menu
setopt complete_in_word # Completion from within word
unsetopt menu_complete

# man zshcontrib
zstyle ':vcs_info:*' actionformats '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{3}|%F{1}%a%F{5}]%f '
zstyle ':vcs_info:*' formats '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{5}]%f '
zstyle ':vcs_info:*' enable git #svn cvs 

# ============ Correction ===============

setopt correct # correct commands
setopt correctall # correct arguments

# ============ Directory Stack ===========

DIRSTACKSIZE=20
DIRSTACKFILE="$HOME/.cache/zsh/dirs"
setopt autopushd pushdsilent pushdtohome
setopt pushdignoredups
setopt pushdminus # reverts +/- operators

if [ ! -d $HOME/.cache/zsh ]; then
    mkdir $HOME/.cache/zsh -p
fi

if [[ -f $DIRSTACKFILE ]] && [[ $#dirstack -eq 0 ]]; then
    dirstack=( ${(f)"$(< $DIRSTACKFILE)"} )
    [[ -d $dirstack[1] ]] && cd $dirstack[1]
fi

chpwd() {
    print -l $PWD ${(u)dirstack} >$DIRSTACKFILE
}

# ============ Prompt ===========

setopt prompt_subst # Enable param and arithmetic expansion, and command substitution

# ============ Other ===========

# Nobody need flow control anymore. Troublesome feature.
#stty -ixon
setopt noflowcontrol
