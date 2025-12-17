# 🔐 Linux Server Hardening

<p align="center">
  <img src="https://raw.githubusercontent.com/abhisheknaiidu/awesome-github-profile-readme/master/assets/devops.gif" width="420" />
</p>

<p align="center">
  <b>Production-ready Linux server hardening standards</b><br>
  Secure • Stable • Compliant • Auditable
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Linux-Security-blue?style=flat-square&logo=linux" />
  <img src="https://img.shields.io/badge/SSH-Hardening-green?style=flat-square" />
  <img src="https://img.shields.io/badge/Firewall-UFW%20%7C%20iptables-orange?style=flat-square" />
  <img src="https://img.shields.io/badge/Role-Senior%20SysAdmin-purple?style=flat-square" />
</p>

---

## 📌 Overview
This repository provides a **standardized Linux server hardening baseline** implemented across **production and staging environments**.

It documents **security best practices, operational guidelines, and reusable scripts/templates** designed to **reduce attack surface**, **improve reliability**, and **support compliance requirements**.

> 🔒 No customer data, IP addresses, domains, or sensitive configurations are included.

---

## 🧱 Hardening Scope

✔ 🔐 **SSH Security**
- Enforced key-based authentication  
- Disabled root login  
- Restricted authentication attempts  

✔ 🔥 **Firewall Configuration**
- Default deny inbound traffic  
- Explicit allow rules for required services  

✔ 🚨 **Intrusion Prevention**
- Fail2Ban configuration for brute-force mitigation  

✔ ⚙️ **System & Kernel Hardening**
- Secure sysctl tuning  
- Removal of unnecessary services  

✔ 📜 **Audit & Logging**
- Audit logging for visibility and compliance  

✔ 👤 **User & Permission Management**
- Least-privilege access model  
- Secure user and group management  

---

## 🔄 Hardening Workflow (Visual)

```text
Fresh Linux Server
        ↓
User & SSH Hardening
        ↓
Firewall Baseline
        ↓
Intrusion Prevention
        ↓
System & Kernel Tuning
        ↓
Audit Logging & Monitoring
        ↓
Production-Ready Secure Server
