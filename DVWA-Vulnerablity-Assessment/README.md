# Web Application VAPT Lab (DVWA)

## Overview
This project is a personal cybersecurity lab where I conducted a **Vulnerability Assessment and Penetration Test (VAPT)** on a deliberately vulnerable web application (DVWA). 

The goal of this project was to practice using industry-standard security tools, simulate the workflow of a security auditor, and write a professional, client-ready vulnerability report.

## Lab Architecture
- **Attacker Machine:** Kali Linux (Nmap, OWASP ZAP)
- **Target Machine:** Ubuntu Server (Docker) running DVWA
- **Network:** Host-Only VirtualBox network

## Tools Used
- **Nmap:** For port scanning and service version detection.
- **OWASP ZAP:** For automated web application vulnerability scanning (spidering, passive and active scans).

## Key Findings (Summary)
The assessment identified several security misconfigurations, including:
- Missing Transport Layer Security (HTTP Only).
- Missing Anti-clickjacking Headers.
- Directory Browsing enabled.
- Session cookies missing the `HttpOnly` flag.
- Information disclosure (Server version exposed via Nmap).

*Note: No critical High-severity vulnerabilities were found during this unauthenticated scan, as deeper application flaws (like SQLi) require authenticated access.*

## Deliverables
- **[Read the full VAPT Report here](./vapt_report.md)**

## Skills Demonstrated
- **Network Reconnaissance:** Nmap port and service scanning.
- **Web App Security:** Identifying misconfigurations and missing security headers.
- **Risk Analysis:** Classifying findings by severity using OWASP Top 10 mapping.
- **Technical Writing:** Writing a professional audit report with actionable remediation steps (Apache configurations).
