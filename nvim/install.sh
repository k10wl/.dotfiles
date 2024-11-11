#!/bin/bash

source ../backup.sh

nvim_path="$HOME/.config/nvim" 
symlink_dest="$(pwd)/nvim-lite"

symlink_backup_name="existing-nvim-symlink"

if [ -L "$nvim_path" ];
then
    echo "nvim symlink already exists, creating nvim symlink destination backup"
    ls -l "$nvim_path" >> "$symlink_backup_name"
    backup_existing_dotfile "$symlink_backup_name"
    rm "$symlink_backup_name"
    rm -rf "$nvim_path"
fi

if [ -d "$nvim_path" ];
then
    echo "nvim config directory already exists, creating backup"
    backup_existing_dotfile "$nvim_path"
    rm -rf "$nvim_path"
fi

echo "creating link"
ln -s "$symlink_dest" "$nvim_path"
