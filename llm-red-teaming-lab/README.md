# EcoMada ATS – LLM Application Security Lab

## Overview
This educational project uses a deliberately vulnerable, locally hosted recruitment-assistant application built with Streamlit, Ollama and Mistral. The goal was to explore how untrusted CV content and local business-rule data can influence an LLM workflow, and to document security weaknesses with reproducible evidence.

This is a controlled lab exercise, not a production assessment or a client engagement.

## Application Components
- **UI:** Streamlit
- **Local model runtime:** Ollama (Mistral)
- **Input:** Candidate details and uploaded PDF CVs
- **Storage:** Local candidate folders
- **Knowledge/context file:** Local HR rules file (`regles_rh.txt`)
- **Email behavior:** The sample function writes proposed email content to a local log file; it does not deliver email through an SMTP service.

## Security Areas Explored
- **Weak input filtering:** A simple keyword blacklist is used to detect suspicious CV text and can produce false positives or be bypassed.
- **Untrusted LLM context:** The model receives candidate-provided content and text from a local HR rules file in its prompt. The lab explored how manipulated context can influence model output. Editing the local rules file requires access to the lab filesystem; it is not evidence of a remote unauthenticated file-write vulnerability.
- **Unsafe Markdown rendering:** Model output is rendered with `st.markdown`. Untrusted generated links or image references should therefore be treated as potentially unsafe.
- **Candidate-file access:** A separate local file-serving setup was used to explore whether candidate files could be retrieved by changing paths. This finding is specific to the lab setup and should not be generalized to applications with different storage controls.

## Deliverables
- [Security assessment report](./audit_report.md)
- [Application source code](./src/app.py)

## Skills Practiced
- Prompt-injection and untrusted-input testing
- Review of LLM prompt construction and output handling
- Local file-access and authorization analysis
- Evidence-based security reporting and remediation planning

---
*Disclaimer: This project was conducted in a controlled educational environment using local test data. Demonstrated behaviors depend on the lab configuration. No external production system was tested.*
