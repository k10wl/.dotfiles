#!/bin/sh

git submodule update --init --recursive

install="install.sh"

for folder in $(ls -d */)
do
    if [ "$folder" == "backups/" ];
    then
        continue
    fi
    if [ -f "$folder/$install" ];
    then
        (cd "$folder" && bash "./$install") ||
        echo "Error in $folder$install"
        continue
    fi

    echo "No $install in $folder, skipping"
done
