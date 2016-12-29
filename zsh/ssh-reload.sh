#!/usr/bin/env bash

reload_ssh_agent() {
    which ssh-agent &>/dev/null || return
    pid=$(pidof ssh-agent) && kill $pid
    ssh-agent | grep -v "echo" > ~/.zsh.d/zzz-ssh-output
    source ~/.zsh.d/zzz-ssh-output
}

pidof ssh-agent &>/dev/null || reload_ssh_agent
