#!/bin/sh

source ./backup.sh
export backup_id=$(create_backup_id)

git submodule update --init --recursive --remote

install="install.sh"

for folder in $(ls -d */); do
    if [ "$folder" == "backups/" ]; then
        continue
    fi

    if [ -f "$folder/$install" ]; then
        (cd "$folder" && bash "./$install") ||
            echo "Error in $folder$install"
        continue
    fi

    echo "No $install in $folder, skipping"
done
