#!/bin/bash

source ../backup.sh

if [ -f "$HOME/.tmux.conf" ];
then
    echo ".tmux.conf already exists, creating backup"
    backup_existing_dotfile "$HOME/.tmux.conf" 
fi

cp ".tmux.conf" "$HOME"
