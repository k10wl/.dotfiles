#!/bin/bash

source ../backup.sh

dest="$HOME/.zshrc" 

if [ -f $dest ] && [ $(file_differs "$dest" "./.zshrc") = 1 ];
then
    echo ".zshrc already exists, creating backup"
    backup_existing_dotfile "$HOME/.zshrc" 
fi

cp ".zshrc" "$HOME"
