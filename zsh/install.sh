#!/bin/bash

source ../backup.sh

if [ -f "$HOME/.zshrc" ];
then
    echo ".zshrc already exists, creating backup"
    backup_existing_dotfile "$HOME/.zshrc" 
fi

cp ".zshrc" "$HOME"
