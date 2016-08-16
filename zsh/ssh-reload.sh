#!/usr/bin/env bash

start_ssh_agent() {
    which ssh-agent >/dev/null 2>&1 || return
    killall ssh-agent
    rm ~/.zsh.d/ssh-output
    ssh-agent | grep -v "echo" > ~/.zsh.d/ssh-output
}

pgrep ssh-agent >/dev/null 2>&1 || start_ssh_agent
