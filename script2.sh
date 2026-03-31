#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Rudranshu (24BCE1082)

PACKAGE="python3"

echo "Checking if $PACKAGE is installed on your system..."
echo ""

if dpkg -l | grep -q "^ii.*$PACKAGE"; then
    echo "✅ Good news! $PACKAGE is already installed."
    echo ""
    echo "Here are some details:"
    dpkg -l | grep "$PACKAGE" | awk '{print "Version: " $3}'
    
    if command -v python3 &>/dev/null; then
        echo "Python Version:"
        python3 --version
    fi
else
    echo "❌ Oops! $PACKAGE is not installed."
    echo "You can install it using:"
    echo "sudo apt install $PACKAGE"
fi

echo ""
echo "💡 Open Source Thought:"
echo "Python follows a simple idea — 'Readability counts'."
echo "It makes coding easier and accessible for everyone."