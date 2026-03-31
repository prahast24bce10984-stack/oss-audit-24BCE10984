#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Prahast Jain (24BCE10984)

clear
echo "========================================="
echo "   OPEN SOURCE MANIFESTO GENERATOR"
echo "========================================="
echo ""

read -p "Enter your name: " USER_NAME
read -p "Favourite open-source tool: " TOOL
read -p "What does freedom mean to you? " FREEDOM
read -p "What will you build? " BUILD

USER_NAME=${USER_NAME:-"Prahast Jain"}
DATE=$(date '+%d %B %Y')
FILE_NAME="manifesto_${USER_NAME// /_}.txt"

cat > "$FILE_NAME" << EOF
========================================
     OPEN SOURCE MANIFESTO
========================================
Name   : $USER_NAME
Reg No : 24BCE10984
Date   : $DATE

I believe in open-source software.

I regularly use $TOOL, which shows how powerful
collaboration can be.

For me, freedom means:
$FREEDOM

I promise to build:
$BUILD

and share it with everyone.

Signed,
$USER_NAME
(Open Source Learner)
========================================
EOF

echo ""
echo "Your manifesto has been saved as: $FILE_NAME"
echo ""
cat "$FILE_NAME"