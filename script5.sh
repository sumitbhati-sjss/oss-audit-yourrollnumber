#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer the following questions:"

read -p "1. Name one open-source tool you use: " TOOL
read -p "2. What does freedom mean to you? " FREEDOM
read -p "3. What will you build and share? " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto.txt"

echo "On $DATE, I believe in open source." > $OUTPUT
echo "I use $TOOL daily." >> $OUTPUT
echo "Freedom means $FREEDOM to me." >> $OUTPUT
echo "I will build and share $BUILD with the world." >> $OUTPUT

echo "Manifesto saved to $OUTPUT"
cat $OUTPUT