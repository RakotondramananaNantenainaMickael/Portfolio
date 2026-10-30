# Blue Team Home Lab - Wazuh SIEM & Incident Response

## Overview
This project is a personal home lab designed to simulate a Security Operations Center (SOC) environment. The goal was to deploy a SIEM (Wazuh), configure a target endpoint, simulate a real-world attack, and perform incident investigation and reporting.

## Architecture
- **SIEM Manager:** Wazuh (installed on Kali Linux)
- **Target Endpoint:** Ubuntu Server 24.04 (VirtualBox VM)
- **Attacker:** Kali Linux (VirtualBox VM)
- **Network:** Host-Only network (isolated lab environment)

## Scenario: SSH Brute Force Detection
The lab simulates a brute force attack against an SSH service using Hydra. The target (Ubuntu) forwards its authentication logs to the Wazuh Manager. Wazuh correlates the failed login attempts and triggers high-severity alerts.

## Deliverables
- [Read the full Incident Report (English)](incident_report_bruteforce.md)

## Skills Demonstrated
- **SIEM Deployment:** Installing and configuring Wazuh Manager and Dashboard.
- **Endpoint Monitoring:** Deploying Wazuh agents and configuring log collection.
- **Attack Simulation:** Using Hydra to perform a password-guessing attack.
- **Incident Response:** Analyzing logs, correlating events, and mapping findings to the MITRE ATT&CK framework.
- **Reporting:** Writing professional incident reports with short, mid, and long-term remediation recommendations.
