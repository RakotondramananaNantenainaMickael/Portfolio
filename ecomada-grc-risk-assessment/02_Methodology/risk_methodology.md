# Risk Assessment Methodology

## 1. Framework Selection
This assessment is based on the **NIST Cybersecurity Framework (CSF) 2.0**. This framework was chosen because it is internationally recognized, flexible, and focuses on aligning cybersecurity outcomes with business objectives. 

The evaluation focused on five specific controls across the NIST functions (Govern, Identify, Protect) that are highly relevant to EcoMada's hybrid environment (cloud services and mobile field devices).

## 2. Gap Analysis Approach
For each selected control, the assessment compared:
*   **Current Practice:** What EcoMada is currently doing based on the provided scenario.
*   **Target Practice:** What the NIST CSF recommends as a best practice.
*   **Gap:** The difference between the current and target states.

## 3. Risk Scoring (5x5 Matrix)
To prioritize the identified gaps, risks were scored using a standard 5x5 risk matrix.

### 3.1 Likelihood (Probability)
| Score | Rating | Description |
| :--- | :--- | :--- |
| **1** | Rare | Highly unlikely to occur (requires an extraordinary combination of events). |
| **2** | Unlikely | Could occur, but not within the next year. |
| **3** | Possible | Could occur within the year. |
| **4** | Likely | Highly probable to occur, or easy for an attacker to exploit. |
| **5** | Almost Certain | Already occurring, or no security controls exist to prevent it. |

### 3.2 Impact (Consequence)
| Score | Rating | Description |
| :--- | :--- | :--- |
| **1** | Negligible | Minor internal inconvenience, no data loss. |
| **2** | Minor | Short-term operational delay, no sensitive data exposed. |
| **3** | Moderate | Temporary disruption of e-commerce operations, minor brand damage. |
| **4** | Major | Customer PII exposed, significant financial loss, operations halted. |
| **5** | Critical | Catastrophic data breach, severe legal penalties, business failure. |

## 4. Exposure Calculation & Prioritization
The **Exposure Score** is calculated by multiplying the Likelihood by the Impact (`Likelihood x Impact`). The maximum possible score is 25.

Based on the score, risks are prioritized as follows:

| Exposure Score | Priority | Action Required |
| :--- | :--- | :--- |
| **16 - 25** | **Critical / High** | Immediate remediation required (within 30 days). |
| **10 - 15** | **High** | Remediation required (within 90 days). |
| **5 - 9** | **Medium** | Remediation planned for the next fiscal cycle. |
| **1 - 4** | **Low** | Acceptable risk; monitor periodically. |

## 5. Risk Response Strategy
For the purpose of this assessment, all identified risks require a **Mitigate** strategy. This means EcoMada will implement security controls to reduce the likelihood or impact of the risk to an acceptable level. 
