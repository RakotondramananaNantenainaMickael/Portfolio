#!/bin/bash

if [ -z "$1" ]; then
	echo "Usage: $0 <ip_address> <port>"
	echo "Example: $0 google.com 80"
	exit 1
fi

IP=$1
PORT=$2

echo "Testing port $PORT on $IP ..."
echo ""

timeout 2 bash -c "echo > /dev/tcp/$IP/$PORT" 2>/dev/null

if [ $? -eq 0 ]; then
	echo "Port $PORT: OPEN"
	echo "$IP is listening on this port" 
else 
	echo "Port $PORT: CLOSED or FILTERED"
	echo "No service is responding on this port" 
fi
