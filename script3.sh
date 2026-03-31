#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Rudranshu (24BCE1082)

DIRS=("/etc" "/var/log" "/home" "/tmp")

echo "========================================="
echo "      Directory Audit Report"
echo "========================================="
echo ""

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld "$DIR" | awk '{print $1}')
        OWNER=$(ls -ld "$DIR" | awk '{print $3}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        
        echo "📁 Directory: $DIR"
        echo "   Permissions : $PERMS"
        echo "   Owner       : $OWNER"
        echo "   Size        : $SIZE"
        echo ""
    else
        echo "⚠️ $DIR does not exist"
        echo ""
    fi
done

echo "Disk Usage Overview:"
echo "--------------------"
df -h | head -5
echo ""
echo "Audit completed on: $(date)"