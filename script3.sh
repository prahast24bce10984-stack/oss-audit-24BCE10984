#!/bin/bash
# Script 3: Directory & Disk Audit
# Author: Prahast Jain (24BCE10984)

DIRECTORIES=("/etc" "/var/log" "/home" "/tmp")

echo "========================================="
echo "     DIRECTORY AUDIT REPORT"
echo "========================================="
echo ""

for DIR in "${DIRECTORIES[@]}"; do
    if [ -d "$DIR" ]; then
        PERMISSION=$(ls -ld "$DIR" | awk '{print $1}')
        OWNER=$(ls -ld "$DIR" | awk '{print $3}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)

        echo "Directory : $DIR"
        echo "Permissions: $PERMISSION"
        echo "Owner     : $OWNER"
        echo "Size      : $SIZE"
        echo ""
    else
        echo "$DIR does not exist"
        echo ""
    fi
done

echo "Disk Summary:"
df -h | head -5

echo ""
echo "Report generated on: $(date)"