#!/usr/bin/env bash

ad-hoc(){
    hosts="$(echo $1 | tr -d ' ')"
    shift
    cmd=$*

    echo "Running '$cmd' on"
    echo $hosts | tr ',' '\n'
    ansible -i "$hosts," -m shell -a "$cmd" all
}
