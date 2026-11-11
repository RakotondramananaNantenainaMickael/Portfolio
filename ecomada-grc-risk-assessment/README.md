# EcoMada Cybersecurity Risk Assessment (NIST CSF 2.0)

## Project Overview
This repository contains a comprehensive Governance, Risk, and Compliance (GRC) assessment conducted for a fictional e-commerce and agritech company named **EcoMada**. 

The objective of this project is to demonstrate practical skills in cybersecurity risk management by applying the **NIST Cybersecurity Framework (CSF) 2.0** to a realistic business scenario. The goal was to identify security gaps, assess their impact on the business, and provide actionable remediation steps.

## Company Scenario: EcoMada
EcoMada is a rapidly growing e-commerce platform connecting local Malagasy producers with urban consumers. 
*   **Size:** 45 employees (including 10 field sales representatives).
*   **IT Environment:** Shopify platform, AWS database, 15 office laptops, 10 Android tablets for field work.
*   **Current Challenge:** Following rapid growth, security has been neglected. The company relies on a single IT specialist and an external web agency, with no formal security policies or incident response plans.

*(Detailed context is available in the [`01_Scenario/company_profile.md`](./01_Scenario/company_profile.md) file.)*

## Methodology
The assessment followed the NIST CSF 2.0 framework. Five critical controls were evaluated by comparing EcoMada's actual practices against the NIST target practices:
- `GV.RR-02`: Roles and responsibilities
- `ID.AM-01`: Inventory of physical devices
- `PR.AA-03`: Authentication (Users, services, devices)
- `PR.DS-11`: Data backups
- `ID.IM-04`: Incident response plans

Risks were scored using a **5x5 Risk Matrix**:
- **Likelihood** (1 to 5)
- **Impact** (1 to 5)
- **Exposure Score** = Likelihood x Impact

## Key Findings
The assessment identified three critical (High) risks that require immediate attention:
1.  **Lack of MFA (Score 25):** Cloud and administrative accounts (Shopify, AWS) rely solely on passwords, which are often shared.
2.  **Unmanaged Field Devices (Score 16):** No asset inventory exists for the 10 tablets used in the field, preventing remote wipes in case of theft.
3.  **Untested Backups (Score 15):** No restore tests have been documented, putting critical customer data at risk during a ransomware attack.

## Deliverables
This repository includes the following professional deliverables:
-   **[EcoMada_GRC_Assessment.xlsx](./EcoMada_GRC_Assessment.xlsx)**: The complete working file, including the Gap Analysis, Risk Register, and Executive Summary.
-   **[EcoMada_GRC_Report.pdf](./EcoMada_GRC_Report.pdf)**: A formal, executive-level report designed for management review.
-   **[01_Scenario/](./01_Scenario/)**: Documentation of the fictional company's context.
-   **[02_Methodology/](./02_Methodology/)**: Detailed explanation of the risk scoring methodology.

## Skills Demonstrated
*   **GRC Frameworks:** Practical application of NIST CSF 2.0.
*   **Risk Management:** Gap analysis, risk scoring (Likelihood/Impact), and prioritization.
*   **Remediation Planning:** Developing actionable 30-day security roadmaps.
*   **Technical Writing:** Drafting executive summaries and professional audit reports.
*   **Business Acumen:** Aligning cybersecurity risks with business continuity (e-commerce operations).

---
*Note: This assessment was conducted in a controlled educational environment for portfolio purposes. No unauthorized testing was performed. This report demonstrates alignment with NIST CSF 2.0 principles but does not establish formal legal compliance or certification.*
