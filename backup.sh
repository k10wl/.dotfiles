#!/bin/bash

create_backup_id() {
    echo $(date +%s)
}

get_backup_id() {
    if [ -n "$backup_id" ]; then
        echo $backup_id
    else
        echo $(create_backup_id)
    fi
}

_backups_root="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/backups"
_dotfiles_backup_folder="$_backups_root/$(get_backup_id)"

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
