#!/bin/bash
# Script 2: Package Checker
# Author: Prahast Jain (24BCE10984)

PACKAGE_NAME="python3"

echo "Checking if $PACKAGE_NAME is installed..."
echo ""

if dpkg -l | grep -q "^ii.*$PACKAGE_NAME"; then
    echo "✔ $PACKAGE_NAME is already installed"
    echo ""

    echo "Package Info:"
    dpkg -l | grep "$PACKAGE_NAME" | awk '{print "Version: " $3}'

    # Show version if command exists
    if command -v python3 &>/dev/null; then
        echo "Installed Version:"
        python3 --version
    fi
else
    echo "✘ $PACKAGE_NAME is not installed"
    echo "You can install it using:"
    echo "sudo apt install $PACKAGE_NAME"
fi

echo ""
echo "Note:"
case $PACKAGE_NAME in
    python3)
        echo "Python is a simple and powerful open-source language."
        echo "It focuses on readability and ease of use."
        ;;
    *)
        echo "$PACKAGE_NAME is part of the open-source ecosystem."
        ;;
esac