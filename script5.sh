#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Shreya

echo "Answer three questions to generate your manifesto."
echo ""

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "--------------------------------" >> $OUTPUT
echo "Open Source Manifesto - $DATE" >> $OUTPUT
echo "--------------------------------" >> $OUTPUT
echo "I, Shreya, believe in the power of open source." >> $OUTPUT
echo "Using tools like $TOOL, I experience true $FREEDOM." >> $OUTPUT
echo "I aim to build and share $BUILD with the world freely." >> $OUTPUT
echo "Knowledge should be accessible to everyone." >> $OUTPUT

echo "Manifesto saved to $OUTPUT"
cat $OUTPUT
