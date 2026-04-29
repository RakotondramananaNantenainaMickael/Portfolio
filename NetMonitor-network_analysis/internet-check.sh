#!/bin/bash

echo "INTERNET CONNECTIVITY TEST"
echo "============================"

ping -c 3 8.8.8.8 > /dev/null 2>&1

if [ $? -eq 0 ]; then
    echo "Internet: OK (8.8.8.8 responds)"

    ping -c 2 google.com > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "DNS: OK (google.com resolved)"
    else
        echo "DNS: FAILED (google.com does not respond)"
    fi
else
    echo "Internet: NO CONNECTION"
    echo "Check your cable or WiFi"
fi

echo ""
echo "My public IP address: "
curl -s ifconfig.me 2>/dev/null || echo "Unable to determine"
