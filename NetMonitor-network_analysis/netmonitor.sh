#!/bin/bash

while true; do 
	clear
	echo "=========================================="
	echo "           NETMONITOR V.1.0"
	echo "       Network Analysis Simplified"
	echo "=========================================="
	echo ""
	echo "1. View active connections"
	echo "2. Test a port (IP + port)"
	echo "3. Check Internet connectivity"
	echo "4. Log current connections"
	echo "5.Exit"
	echo ""
	read -p "Your choice: " choice 

	case $choice in 
		1) 
			echo ""
			./connections.sh
			read -p "Press Enter..."
			;;
		2)
			echo ""
			read -p "IP address or domain: " ip
			read -p "Port to test: " port
			echo ""
			./port-scan.sh "$ip" "$port"
			read -p "Press Enter..." 
			;;
		3)
			echo ""
			./internet-check.sh
			read -p "Press Enter ..."
			;;
		4)
			echo ""
			./log-connections.sh
			read -p "Press Enter ..."
			;;
		5)
			echo "Goodbye"
			exit 0
			;;
		*)
			echo "Invalid choice"
			sleep 1
			;;
	esac
done
