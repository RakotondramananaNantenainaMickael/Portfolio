# Phishing Simulation & Incident Response Lab

## Overview
This project is a personal home lab designed to simulate a phishing campaign and perform a full incident investigation. The goal was to understand the lifecycle of a credential-harvesting attack, analyze the network traffic, and document the findings in a professional incident report.

## Architecture
- **Attack Platform:** GoPhish (installed on Kali Linux)
- **Email Interception:** MailHog (installed on Kali Linux)
- **Network Analysis:** Wireshark
- **Target:** Simulated user (`test@lab.local`)
- **Network:** Host-Only network (isolated lab environment)

## Scenario: Credential Harvesting & Exfiltration
The lab simulates a targeted phishing email sent to a user. The user clicks the malicious link, is redirected to a fake login page hosted by GoPhish, and submits their credentials. Wireshark is used to intercept the cleartext HTTP POST request, proving the exfiltration of sensitive data.

## Deliverables
- [Read the full Incident Report (English)](incident_report_en.md)
- [Lire le rapport d'incident complet (Français)](rapport_phishing_fr.md)

## Skills Demonstrated
- **Phishing Simulation:** Deploying GoPhish, configuring SMTP profiles, and creating email templates.
- **Network Analysis:** Using Wireshark to capture and analyze HTTP traffic.
- **Incident Response:** Investigating a credential compromise and correlating business evidence (dashboard) with technical evidence (packet capture).
- **Reporting:** Writing professional bilingual incident reports with short, mid, and long-term remediation recommendations (HTTPS enforcement, MFA, user awareness).
