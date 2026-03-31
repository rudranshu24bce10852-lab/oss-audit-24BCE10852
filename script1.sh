#!/bin/bash
# Script 1: System Identity Report
# Author: Rudranshu (24BCE1082)

# Variables
STUDENT_NAME="Rudranshu"
REG_NO="24BCE1082"
SOFTWARE_CHOICE="Python"

# System information
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
CURRENT_DATE=$(date)

# Get distribution
if [ -f /etc/os-release ]; then
    DISTRO=$(grep PRETTY_NAME /etc/os-release | cut -d'"' -f2)
else
    DISTRO="Unknown"
fi

# Display output
echo "========================================="
echo "   Open Source System Report"
echo "========================================="
echo "Name        : $STUDENT_NAME"
echo "Reg Number  : $REG_NO"
echo ""
echo "Running on  : $DISTRO"
echo "Kernel Info : $KERNEL"
echo "Architecture: $(uname -m)"
echo ""
echo "User        : $USER_NAME"
echo "Home Dir    : $HOME_DIR"
echo "Shell       : $SHELL"
echo ""
echo "System Uptime : $UPTIME"
echo "Current Time  : $CURRENT_DATE"
echo ""
echo "This system uses open-source principles under GPL."
echo "Preferred Software: $SOFTWARE_CHOICE"
echo "========================================="