# INCIDENT REPORT – SSH BRUTE FORCE DETECTION

**Incident ID:** INC-2026-SOC-002  
**Incident Date:** October 30, 2026  
**Analyst:** [Ton Nom]  
**Severity:** High (Unauthorized Access Attempt)  
**Status:** Closed  

---

## 1. Executive Summary
A brute force attack was detected against the SSH service of the target server (`ubuntu_target`). The Wazuh SIEM correlated multiple authentication failures and generated high-severity alerts. The server's built-in SSH rate limiting (`MaxStartups`) eventually blocked the attacker, preventing unauthorized access.

## 2. Incident Timeline
*   **12:42:57** : Initial Hydra attack started from Kali Linux (192.168.56.1).
*   **12:43:04** : First Wazuh alert triggered (Rule 5760 - SSH authentication failed).
*   **12:43:13** : Wazuh triggers a Level 10 alert for multiple password failures (Rule 2502).
*   **12:43:36** : The SSH server blocks the connection, returning a "Maximum authentication attempts exceeded" error (Rule 5758).

## 3. Technical Analysis

### 3.1 Attack Vector
The attacker (192.168.56.1) used the `Hydra` tool to perform a dictionary attack against the `admin` user on the target (192.168.56.10) via the SSH protocol.

### 3.2 Detection & Evidence
The Wazuh Manager successfully ingested the authentication logs forwarded by the `ubuntu_target` agent.
*   **Triggered Rules:** 
    *   `5760`: sshd: authentication failed.
    *   `2502`: syslog: User missed the password more than one time.
*   **Source IP:** 192.168.56.1 (Kali)
*   **Target User:** admin

![Wazuh Dashboard Alert](images/wazuh_dashboard.png)

### 3.3 MITRE ATT&CK Mapping
*   **Tactic:** Credential Access
*   **Technique:** T1110.001 - Brute Force: Password Guessing

## 4. Impact
No unauthorized access was gained. The attack was a simulated exercise. However, in a production environment, a successful brute force attack could lead to full system compromise and lateral movement within the network.

## 5. Recommendations

### Short-term (Immediate - 0 to 48 hours)
1. **IP Blocking:** Block the attacker's IP address (192.168.56.1) at the firewall level.
2. **Account Lockout:** Ensure that local account lockout policies are in place to prevent continuous guessing.

### Mid-term (1 to 3 months)
1. **Deploy Fail2Ban:** Install and configure Fail2Ban to automatically ban IPs after 3-5 failed SSH attempts.
2. **Disable Password Authentication:** Enforce SSH Key-based authentication and disable password logins entirely.

### Long-term (6 months and beyond)
1. **Enforce MFA:** Implement Multi-Factor Authentication for all remote access.
2. **Continuous Monitoring:** Integrate Wazuh with an alerting system (like Slack or Email) for real-time Level 10 alert notifications.

---
*End of report.*
