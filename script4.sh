#!/bin/bash
# Script 4: Log File Analyzer
# Author: Shreya

# Usage: ./log_analyzer.sh /var/log/syslog error

LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

if [ ! -f "$LOGFILE" ]; then
 echo "Error: File $LOGFILE not found."
 exit 1
fi

# Retry if file is empty (do-while style)
while [ ! -s "$LOGFILE" ]; do
 echo "Log file is empty. Retrying in 2 seconds..."
 sleep 2
done

while IFS= read -r LINE; do
 if echo "$LINE" | grep -iq "$KEYWORD"; then
  COUNT=$((COUNT + 1))
 fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

echo "--------------------------------------"
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
