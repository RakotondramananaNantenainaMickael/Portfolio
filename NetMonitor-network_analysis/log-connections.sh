#!/bin/bash 

LOG_FILE="network-log.txt"

touch "$LOG_FILE"

echo "======================" >> "$LOG_FILE"
echo "Date: $(date)" >> "$LOG_FILE"
ss -tun | grep ESTAB >> "$LOG_FILE"

echo "" >> "$LOG_FILE"
echo "Processes using the network: " >> "$LOG_FILE"
lsof -i -n -P | head -10 >> "$LOG_FILE" 2>/dev/null

echo "Log saved to $LOG_FILE"
echo "File size: $(du -h $LOG_FILE | cut -f1)"

echo ""
echo "Last entries: "
tail -5 "$LOG_FILE"
