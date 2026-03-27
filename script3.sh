#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Shreya

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

for DIR in "${DIRS[@]}"; do
 if [ -d "$DIR" ]; then
  PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
  SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
  echo "$DIR => Permissions: $PERMS | Size: $SIZE"
 else
  echo "$DIR does not exist on this system"
 fi
done

echo "--------------------------------------"
echo "Checking VLC Config Directory..."

VLC_CONFIG="$HOME/.config/vlc"

if [ -d "$VLC_CONFIG" ]; then
    ls -ld $VLC_CONFIG
else
    echo "VLC config directory not found"
fi
