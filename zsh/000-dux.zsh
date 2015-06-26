if [[ ! $TERM =~ screen  ]]; then
    ~/bin/dux || echo "Failed to run Dux"
fi
