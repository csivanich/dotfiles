if [[ ! $TERM =~ screen  ]]; then
    ~/bin/dux || echo "Failed to run Dux (returned with $?)"
    echo -n "Exiting in 3 "
    sleep 1
    echo -n "2 "
    sleep 1
    echo -n "1 "
    sleep 1
    exit
fi
