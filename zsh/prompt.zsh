#!/usr/env zsh

# divider background
_p_divider(){
    echo -n "%K{$2}%F{$1}$DIVIDER%f%k"
}

# text background divider_bg
_p_success(){
    if [ $? -ne 0 ]; then
        echo -n "%F{$1}%K{$2}"
        echo -n " ! "
        echo -n "%f%k"
        _p_divider $2 $3
    fi
}

_p_nick(){
    if [ -n "$nick" ]; then
        echo -n "%F{$1}%K{$2}"
        echo -n " $nick "
        echo -n "%f%k"
        _p_divider $2 $3
    fi
}

# text background divider_bg
_p_main(){
    if [ -n "$nick" ]; then
        echo -n "%F{$4}%K{$2}"
        echo -n " ($nick)"
    fi
    echo -n "%F{$1}%K{$2}"
    echo -n " %n@%M "
    echo -n "%k%f"
    _p_divider $2 $3
}

# text background divider_bg
_p_location(){
    echo -n "%F{$1}%K{$2} %~ %k%f"
    _p_divider $2 $3
}

# text background divider_bg
_p_git(){
    git rev-parse --abbrev-ref HEAD > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo -n "%F{$1}%K{$2} $BRANCH "
        git rev-parse --abbrev-ref HEAD | tr -d '\n'
        echo -n " %f%k"
        _p_divider $2 $3
    fi
}

_p_git_color(){
    git diff --name-only > /dev/null 2>&1
    if [ $? -ne 0 ]; then
        echo "$reset_color"
        return
    else
        if [ -z "$(git diff --name-only)" ]; then
            echo "green"
        else
            echo "yellow"
        fi
    fi
}

_p(){
    DIVIDER="${DIVIDER:-}"
    BRANCH="${BRANCH:-}"

    #           text    background  divider_bg
    _p_success  "red"   "white"     "black"
    _p_main     "white" "black"     "blue"      "green"
    _p_location "black" "blue"      "$(_p_git_color)"
    _p_git      "black" "$(_p_git_color)"   "$reset_color"
    echo -n " "
}

setopt PROMPT_SUBST
PROMPT='$(_p)'

