#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Rudranshu (24BCE1082)

clear
echo "========================================="
echo "   Open Source Manifesto Generator"
echo "========================================="
echo ""

read -p "Enter your name: " NAME
read -p "Which open-source tool do you use daily? " TOOL
read -p "What does 'freedom' mean to you? " FREEDOM
read -p "What do you want to build and share? " BUILD

NAME=${NAME:-"Rudranshu"}
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_${NAME// /_}.txt"

cat > "$OUTPUT" << EOF
========================================
        OPEN SOURCE MANIFESTO
========================================
Name: $NAME
Registration No: 24BCE1082
Date: $DATE

I, $NAME, strongly believe in the power of open source software.

Every day, I use tools like $TOOL, which show how collaboration
and shared knowledge can change the world.

For me, freedom means $FREEDOM.

I aim to build $BUILD and contribute it back to the community,
so others can learn, grow, and innovate.

Signed,
$NAME
Open Source Contributor
$DATE
========================================
EOF

echo ""
echo "✅ Your manifesto has been saved as: $OUTPUT"
echo ""
cat "$OUTPUT"