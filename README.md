# 🛡️ Open Source Firewall Project

## 📖 Introduction
This project was created to introduce myself further into **cybersecurity** and **network concepts**, specifically:
- Setting up an **open source firewall** on Ubuntu using `iptables`
- Understanding **tables, chains, and rules**
- Gaining hands-on experience with **port numbers** and their use
- Testing traffic with tools like **curl** and validating with **Wireshark**

The goal was not only to learn theory, but to **practically apply it** — configuring a firewall, running tests, and visually confirming blocked/allowed packets.

---

## 🗂️ Project Structure
OpenSourceFirewallProject/
├── README.md # This file
├── firewall_rules.md # Detailed explanation of iptables rules
├── Screenshots/ # Screenshots of terminal & Wireshark captures
│ ├── iptables_setup.png
│ ├── Ping_test.png
│ ├── HTTP_macafee.png
│ ├── HTTP_test_first_attempt.png
│ ├── 
│ ├── 
│ ├── HTTP_Blocked.png
│ ├──
│ ├── tcp_allowed.png
│ └── wireshark_filter.png
└── scripts/
├── firewall.sh # Bash script with iptables rules
└── python_server.sh # Helper script to start Python server
