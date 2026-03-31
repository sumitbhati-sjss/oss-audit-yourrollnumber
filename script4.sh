#!/bin/bash
# Script 4: Log File Analyzer

LOGFILE="/var/log/syslog"
KEYWORD="error"
COUNT=0

if [ ! -f "$LOGFILE" ]; then
    echo "Log file not found!"
    exit 1
fi

while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"