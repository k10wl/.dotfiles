#!/bin/sh

echo "Installing .dotfiles"
echo "---"

install="install.sh"

for folder in $(ls -d */)
do
    if [ "$folder" == "backups/" ];
    then
        continue
    fi
    if [ -f "$folder/$install" ];
    then
        echo "Running install script in $folder"
        (cd "$folder" && bash "./$install")
        echo "Finished installing $folder"
        continue
    fi

    echo "No install script found in $folder, continuing..."
done

echo "---"
echo "Successfully installed .dotfiles"
