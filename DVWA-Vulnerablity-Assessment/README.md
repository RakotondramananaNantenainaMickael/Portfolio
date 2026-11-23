# DVWA Web Security Assessment Lab

## Overview
A scoped, educational assessment of a deliberately vulnerable web application (DVWA) hosted on an Ubuntu Server VM. The documented exercise focused on network reconnaissance and **unauthenticated** web-server checks; it was not a full authenticated penetration test.

## Lab Setup
- **Assessment machine:** Kali Linux
- **Target:** Ubuntu Server running DVWA
- **Virtualization / network:** VirtualBox, host-only network
- **Tools:** Nmap and OWASP ZAP

## Areas Reviewed
- Exposed services and service information
- HTTP transport without HTTPS
- Missing anti-clickjacking response header
- Directory listing
- Session-cookie security attributes
- Server-version disclosure

The report records the scan scope, evidence, severity assessment and recommended remediation. Testing that requires an authenticated DVWA session, including authenticated SQL injection and stored XSS testing, was outside this exercise.

## Report
- [Read the vulnerability assessment report](./vapt_report.md)

## Skills Practiced
- Network reconnaissance with Nmap
- Automated web application scanning with OWASP ZAP
- Review of HTTP security headers and cookie attributes
- Finding classification and remediation writing

---
*Educational lab only. Findings are limited to the stated target, scan conditions and evidence; automated scanning does not establish that an application is free of other vulnerabilities.*
