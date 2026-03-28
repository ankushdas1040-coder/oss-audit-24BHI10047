#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE=$1

if [ -z "$PACKAGE" ]; then
    echo "Usage: ./script2.sh <package-name>"
    exit 1
fi

# Check using dpkg (Ubuntu/Debian)
if dpkg -l | grep -qw $PACKAGE; then
    echo "$PACKAGE is installed."
    dpkg -l | grep $PACKAGE
else
    echo "$PACKAGE is NOT installed."
fi

# Case statement
case $PACKAGE in
    apache2) echo "Apache: the web server that built the open internet" ;;
    mysql) echo "MySQL: open source at the heart of millions of apps" ;;
    git) echo "Git: distributed version control revolutionizing development" ;;
    firefox) echo "Firefox: a browser defending the open web" ;;
    vlc) echo "VLC: plays almost any media format freely" ;;
    *) echo "Unknown package — but still part of FOSS ecosystem!" ;;
esac
