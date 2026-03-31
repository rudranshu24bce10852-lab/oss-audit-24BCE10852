#!/bin/bash
# Script 4: Log File Analyzer
# Author: Rudranshu (24BCE1082)

if [ -z "$1" ]; then
    echo "Usage: $0 <logfile> [keyword]"
    exit 1
fi

LOGFILE=$1
KEYWORD=${2:-"error"}

if [ ! -f "$LOGFILE" ]; then
    echo "❌ File not found. Please check the path."
    exit 1
fi

TOTAL=$(wc -l < "$LOGFILE")
MATCH=0

while IFS= read -r LINE; do
    echo "$LINE" | grep -iq "$KEYWORD" && MATCH=$((MATCH+1))
done < "$LOGFILE"

echo "========================================="
echo "        Log File Analysis"
echo "========================================="
echo "File       : $LOGFILE"
echo "Keyword    : $KEYWORD"
echo "Total lines: $TOTAL"
echo "Matches    : $MATCH"

if [ $TOTAL -gt 0 ]; then
    PERCENT=$(echo "scale=2; $MATCH * 100 / $TOTAL" | bc)
    echo "Match %    : $PERCENT%"
fi

echo ""
echo "Recent Matches:"
echo "----------------"
grep -in "$KEYWORD" "$LOGFILE" | tail -5
echo ""
echo "Analysis completed at: $(date)"