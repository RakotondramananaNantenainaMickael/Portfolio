#!/bin/bash 

echo "========================================="
echo "ACTIVE CONNECTIONS ON THIS MACHINE"
echo "Date: $(date)"
echo "========================================="
echo ""

echo "Established TCP connections:"
ss -t | grep ESTAB | while read line; do
    printf "   %s\n" "$line"
done

total=$(ss -t | grep ESTAB | wc -l)
echo ""
echo "Total: $total active connection(s)"

if [ "$total" -gt 50 ] 2>/dev/null; then
    echo ""
    echo "WARNING: High number of connections ($total)"
    echo "Please verify if this is normal."
fi 
