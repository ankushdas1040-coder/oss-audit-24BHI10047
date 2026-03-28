#!/bin/bash
# Script 3: Disk and Permission Auditor

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist"
    fi
done

# Check config directory of a software (example: apache2)
CONFIG_DIR="/etc/apache2"

echo ""
echo "Checking software config directory..."

if [ -d "$CONFIG_DIR" ]; then
    ls -ld $CONFIG_DIR
else
    echo "Config directory not found."
fi
