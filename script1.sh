#!/bin/bash
# Script 1: System Identity Report
# Author: Ankush Das | Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Ankush Das"
SOFTWARE_CHOICE="Your Software"

# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE=$(date)
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')

# --- Display ---
echo "================================"
echo "  Open Source Audit — $Ankush_Das"
echo "================================"
echo "Software: $SOFTWARE_CHOICE"
echo "Distribution : $DISTRO"
echo "Kernel       : $KERNEL"
echo "User         : $USER_NAME"
echo "Home Dir     : $HOME"
echo "Uptime       : $UPTIME"
echo "Date/Time    : $DATE"
echo "License      : Most Linux systems are licensed under GPL (General Public License)"
echo "================================"
