#!/usr/env zsh

# divider background
_p_divider(){
    echo -n "%K{$2}%F{$1}$DIVIDER%f%k"
    echo -n "%K{$1}%F{$2}$DIVIDER%f%k"
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
        echo -n " $nick"
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
    if [ $IS_GIT -eq 0 ]; then
        echo -n "%F{$1}%K{$2} $BRANCH "
        git rev-parse --abbrev-ref HEAD | tr -d '\n'
        echo -n " %f%k"
        _p_divider $2 $3
    fi
}

_p_git_color(){
    if [ $IS_GIT -ne 0 ]; then
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

# files_changed insertions deletions
_p_git_diffs(){
    if [[ "$IS_GIT" == "0" ]];then
        i=$(git diff --shortstat)
        changes=$(echo "$i" | awk '{print $1}')
        additions=$(echo "$i" | awk '{print $4}')
        deletions=$(echo "$i" | awk '{print $6}')
        if [ "$changes" -gt "0" ]; then
            echo "%F{$1}~$changes%f %F{$2}+$additions%f %F{$3}-$deletions%f"
        fi
    fi
}

_p(){
    git diff --shortstat > /dev/null 2>&1
    IS_GIT=$?

    DIVIDER=""
    DIVIDER2=""
    BRANCH=""

    #           text    background  divider_bg
    #_p_success  "red"   "white"     "white"
    _p_main     "blue" "black"     "blue"  "green"
    _p_location "magenta" "black"      "magenta"
    _p_git      "$(_p_git_color)" "black" "$(_p_git_color)"
    echo -n " "
}

_p_right(){
    git diff --shortstat > /dev/null 2>&1
    IS_GIT=$?
    _p_git_diffs "yellow" "green" "red"
}

setopt PROMPT_SUBST
PROMPT='$(_p)'
RPROMPT='$(_p_right)'
