#!/bin/bash

_dotfiles_backup_folder="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/backups/$(date +%s)"

backup_existing_dotfile() {
    mkdir -p $_dotfiles_backup_folder
    cp -r $1 $_dotfiles_backup_folder
}

file_differs() {
    if [ "$(diff $1 $2)" = '' ]; then
        echo "0"
    else
        echo '1'
    fi
}
