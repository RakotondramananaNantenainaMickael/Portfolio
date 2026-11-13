# EcoMada LLM Security Audit (Red Teaming)

## Project Overview
This repository contains a comprehensive Red Teaming audit conducted against a custom Applicant Tracking System (ATS) powered by a Large Language Model (Mistral). 

The objective was to simulate a real-world attack against an AI-driven recruitment platform, identify vulnerabilities, and provide actionable remediation strategies. The lab was built using Streamlit (Python), Ollama (local LLM), and a local file storage system.

## Architecture & Scope
- **Frontend:** Streamlit (Python)
- **LLM Engine:** Ollama (Mistral 7B)
- **Storage:** Local file system (`candidatures/` directory)
- **Security Controls:** Basic Python keyword filter (`est_injecte`) and a local RAG file (`regles_rh.txt`) for business rules.

## Vulnerabilities Discovered
The audit revealed a critical exploit chain. By combining multiple vulnerabilities, an unauthenticated attacker can manipulate the AI, bypass security filters, and exfiltrate sensitive data. 

The findings are mapped to the **OWASP Top 10 for LLM Applications** and the **OWASP API Security Top 10**:

1. **Inefficient Keyword Filtering (LLM01 - Evasion):** The Python blacklist filter triggers false positives (blocking legitimate IT CVs) and is easily bypassed using synonyms or encoded payloads.
2. **RAG Data Poisoning (LLM03):** The local knowledge base (`regles_rh.txt`) is not protected. An attacker can inject fake business rules to force the AI to execute arbitrary commands.
3. **Zero-Click Data Exfiltration via Markdown (LLM02):** The application renders the LLM's output as Markdown. The AI can be tricked into generating an image link containing sensitive data (PII), which is automatically sent to an attacker's server when the HR manager views the page.
4. **Insecure Direct Object Reference / IDOR (API1:2023):** The storage server hosting the resumes does not verify user authorization, allowing anyone to download the CVs of other candidates by modifying the URL.


## Skills Demonstrated
- **LLM Red Teaming:** Prompt Injection, Jailbreaking, RAG Poisoning, Data Exfiltration.
- **Web Security:** IDOR identification, Broken Access Control analysis.
- **Python Development:** Building a vulnerable application to simulate real-world scenarios.
- **Technical Reporting:** Writing detailed, client-ready audit reports with short, mid, and long-term remediation steps.

## Deliverables
-  **[Read the Full Audit Report](./audit_report.md)** - Detailed analysis of each finding with PoC and remediation.
-  **[Vulnerable Source Code](./src/app.py)** - The Python application used for testing.

---
*Disclaimer: This assessment was conducted in a controlled educational environment for portfolio purposes. No unauthorized testing was performed.*
