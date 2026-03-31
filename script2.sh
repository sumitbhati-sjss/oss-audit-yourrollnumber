#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="git"

if dpkg -l | grep -q $PACKAGE; then
    echo "$PACKAGE is installed."
    dpkg -l | grep $PACKAGE
else
    echo "$PACKAGE is NOT installed."
fi

case $PACKAGE in
    git) echo "Git: A distributed version control system" ;;
    vlc) echo "VLC: Open-source media player" ;;
    firefox) echo "Firefox: Open-source web browser" ;;
    *) echo "Unknown package" ;;
esac