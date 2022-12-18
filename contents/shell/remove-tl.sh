#!/bin/bash
read -p "Are you sure to remove TL:Legacy? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo 'removing .desktop files'
    sudo rm /usr/share/applications/tl.desktop
    sudo rm /usr/share/applications/remove-tl.desktop
    sleep 2
    echo 'removing directories and shell files.'
    rm /home/$USER/.tlauncher
    sudo rm /usr/bin/remove-tl
    sudo rm /usr/bin/tl-legacy
    sudo rm -r /usr/share/tl
    echo 'removed.'
fi

if [[ $REPLY =~ ^[Nn]$ ]]
then
    exit
fi

