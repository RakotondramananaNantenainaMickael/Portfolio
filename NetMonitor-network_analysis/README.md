# NetMonitor

**Network analysis suite for Linux | Bash**

---

## Description

NetMonitor is a collection of simple Bash scripts designed for basic network analysis and monitoring. This tool allows you to view active connections, test ports, check Internet connectivity, and log network status.

This project was created as part of a self-learning journey in networking and Bash scripting.

---

## Features

| Feature | Description |
|---------|-------------|
| View active connections | Display all established TCP connections on your machine |
| Test a port | Check if a specific port is open on a remote machine |
| Internet connectivity test | Verify Internet access and DNS resolution |
| Connection logging | Save network status to a text file for later analysis |
| Interactive menu | Easy-to-use menu to access all features |

---

## Prerequisites

- **Operating System**: Linux (tested on Ubuntu 22.04, 24.04, and Kali Linux)
- **Bash version**: 5.0 or higher
- **Required commands**: `ss`, `ping`, `curl`, `lsof` (for logging only)
- **Root privileges**: Only required for the logging script (`log-connections.sh`)

**Verify prerequisites:**
```bash
bash --version
which ss ping curl lsof

## PROJECT STRUCTURE
NetMonitor/
├── README.md                 # This file
├── netmonitor.sh             # Main script (interactive menu)
├── connections.sh            # Display active connections
├── port-scan.sh              # Test if a port is open
├── internet-check.sh         # Check Internet connectivity
├── log-connections.sh        # Save network status to a log file
└── network-log.txt           # Log file (generated automatically)
```

## INSTALLATION
```bash
mkdir NetMonitor && cd NetMonitor
chmod +x *.sh
./netmonitor.sh
```

## SCRIPTS DOCUMENTATION

### netmonitor.sh
Main script that displays an interactive menu and orchestrates the other scripts. 
#### Usage: 
```bash 
./netmonitor.sh
```
### connections.sh 
Displays all established TCP connections and counts them. 
#### Usage: 
```bash 
./connections.sh
```

### port-scan.sh
Tests if a specific port is open on a remote machine using /dev/tcp.
#### Usage: 
```bash
./port-scan.sh <ip_address> <port>
```
#### Example:
```bash
./port-scan.sh google.com 80
```
### Internet-check.sh
Verifies internet connectivity and DNS functionality 
#### Usage: 
```bash 
./internet-check.sh
```
### log-connections.sh
Saves the current network state to a text file.
#### Usage: 
```bash
./log-connections.sh
```
### Example Outputs
#### Active Connections
```bash
=========================================
ACTIVE CONNECTIONS ON THIS MACHINE
Date: Wed Apr 29 09:40:42 AM EAT 2026
=========================================

Established TCP connections:
ESTAB       0         0            192.168.88.72:56160          3.173.21.63:https
ESTAB       0         0            192.168.88.72:36086          34.107.243.93:https

Total: 2 active connection(s)
```

#### Port test
```bash 
Testing port 80 on google.com...

Port 80: OPEN
google.com is listening on this port
```

#### Internet Connectivity Test
```bash
INTERNET CONNECTIVITY TEST
==============================
Internet: OK (8.8.8.8 responds)
DNS: OK (google.com resolved)

My public IP address:
84.25.123.45
```

## SKILLS ACQUIRED
### Bash Scripting 
+ Variables : total=$(ss -t | grep ESTAB | wc -l)
+ Conditionals: if [ $? -eq 0 ]; then
+ Loops: while true; do, while read line; do
+ Arguments: $1, $2 in port-scan.sh
+ Exit codes: $? to test success/failure
+ Redirections: > /dev/null 2>&1
+ Interactive menu: case + read
### Network Administration
+ ss - List TCP/UDP connections
+ ping - Test connectivity and latency
+ curl - HTTP requests (public IP API)
+ lsof - Identify processes using the network
+ /dev/tcp - Port testing without external tools

## POSSIBLE IMPROVEMENTS
+ Add configuration file (customizable thresholds)
+ Add IPv6 support
+ Continuous monitoring mode with auto-refresh
+ JSON export for results
+ Email alerts
+ Integration with Wireshark for packet capture
+ TUI interface with dialog

## LICENSE 
This project is distributes under the MIT License.
See the [LICENSE](/LICENSE) file at the root of this repository for more information.

## AUTHOR
RAKOTONDRAMANANA Nantenaina Mickaẽl - first year IT students
