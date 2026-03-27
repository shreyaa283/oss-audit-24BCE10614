#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Shreya

PACKAGE="vlc"

# Check if package is installed
if dpkg -l | grep -qw $PACKAGE; then
    echo "$PACKAGE is installed."
    apt show $PACKAGE 2>/dev/null | grep -E 'Version|Maintainer|Description'
else
    echo "$PACKAGE is NOT installed."
fi

# Philosophy case statements
case $PACKAGE in
 vlc) echo "VLC: Freedom to play any media, anywhere" ;;
 apache2) echo "Apache: the web server that built the open internet" ;;
 mysql) echo "MySQL: open source at the heart of millions of apps" ;;
 firefox) echo "Firefox: privacy-focused open web browser" ;;
 *) echo "Open source empowers innovation and collaboration" ;;
esac
