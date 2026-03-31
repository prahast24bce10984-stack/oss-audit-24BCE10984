#!/bin/bash
# Script 4: Log File Analyzer
# Author: Prahast Jain (24BCE10984)

# Check input
if [ -z "$1" ]; then
    echo "Usage: $0 <logfile> [keyword]"
    exit 1
fi

FILE=$1
SEARCH_WORD=${2:-"error"}

# File existence check
if [ ! -f "$FILE" ]; then
    echo "File not found!"
    exit 1
fi

TOTAL_LINES=$(wc -l < "$FILE")
MATCH_COUNT=0

# Counting matches
while read -r LINE; do
    echo "$LINE" | grep -iq "$SEARCH_WORD" && MATCH_COUNT=$((MATCH_COUNT+1))
done < "$FILE"

echo "========================================="
echo "        LOG ANALYSIS REPORT"
echo "========================================="
echo "File        : $FILE"
echo "Keyword     : $SEARCH_WORD"
echo "Total Lines : $TOTAL_LINES"
echo "Matches     : $MATCH_COUNT"

if [ $TOTAL_LINES -gt 0 ]; then
    PERCENT=$(echo "scale=2; $MATCH_COUNT * 100 / $TOTAL_LINES" | bc)
    echo "Match %     : $PERCENT%"
fi

echo ""
echo "Last 5 matching lines:"
grep -in "$SEARCH_WORD" "$FILE" | tail -5

echo ""
echo "Completed on: $(date)"