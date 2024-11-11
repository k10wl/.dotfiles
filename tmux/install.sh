#!/bin/bash

source ../backup.sh

dest="$HOME/.tmux.conf" 

if [ -f $dest ] && [ $(file_differs "$dest" "./.tmux.conf") = 1 ];
then
    echo ".tmux.conf already exists, creating backup"
    backup_existing_dotfile $dest
fi

cp ".tmux.conf" "$HOME"
