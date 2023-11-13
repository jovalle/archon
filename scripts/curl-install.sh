#!/bin/bash

# Checking if is running in Repo Folder
if [[ "$(basename "$(pwd)" | tr '[:upper:]' '[:lower:]')" =~ ^scripts$ ]]; then
    echo "You are running this in archon Folder."
    echo "Please use ./archon.sh instead"
    exit
fi

# Installing git

echo "Installing git."
pacman -Sy --noconfirm --needed git glibc

echo "Cloning the archon Project"
git clone https://github.com/jovalle/archon

echo "Executing archon Script"

cd $HOME/archon

exec ./archon.sh
