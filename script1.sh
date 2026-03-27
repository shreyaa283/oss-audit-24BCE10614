#!/bin/bash
# Script 1: System Identity Report
# Author: Shreya | Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Shreya"
SOFTWARE_CHOICE="VLC"

# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')
DATE=$(date)

# --- Display ---
echo "================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "================================"
echo "Software : $SOFTWARE_CHOICE"
echo "Kernel   : $KERNEL"
echo "User     : $USER_NAME"
echo "Uptime   : $UPTIME"
echo "Distro   : $DISTRO"
echo "Date     : $DATE"
echo "--------------------------------"
echo "This system runs on GNU/Linux (GPL Licensed)"
echo "================================"
