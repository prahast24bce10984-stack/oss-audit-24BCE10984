#!/bin/bash
# Script 1: System Identity Report
# Author: Prahast Jain (24BCE10984)

# Basic Details
NAME="Prahast Jain"
REG_NO="24BCE10984"
FAV_SOFTWARE="Python"

# Collecting system info
KERNEL_VERSION=$(uname -r)
USER=$(whoami)
HOME_DIRECTORY=$HOME
SYSTEM_UPTIME=$(uptime -p)
CURRENT_TIME=$(date)

# Finding OS Distribution
if [ -f /etc/os-release ]; then
    DISTRO_NAME=$(grep PRETTY_NAME /etc/os-release | cut -d '"' -f2)
else
    DISTRO_NAME="Not Available"
fi

# Displaying Report
echo "========================================="
echo "     SYSTEM REPORT"
echo "========================================="
echo "Name       : $NAME"
echo "Reg No     : $REG_NO"
echo ""

echo "OS         : $DISTRO_NAME"
echo "Kernel     : $KERNEL_VERSION"
echo "Architecture: $(uname -m)"
echo ""

echo "User       : $USER"
echo "Home Dir   : $HOME_DIRECTORY"
echo "Shell      : $SHELL"
echo ""

echo "Uptime     : $SYSTEM_UPTIME"
echo "Date/Time  : $CURRENT_TIME"
echo ""

echo "License    : GNU GPL"
echo "Favourite Tool : $FAV_SOFTWARE"
echo "========================================="