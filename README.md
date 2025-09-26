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

[README](README.md) – This file  
[Firewall Rules](firewall_rules.md) – Markdown documentation for iptables setup  
[Screenshots](Screenshots) – Wireshark captures and terminal output  
[Firewall Script](scripts/firewall.sh) – Shell script to apply firewall rules  
[Python Server](python_server.sh) – Simple HTTP server for traffic simulation  
[Wireshark](wireshark.md) – Wireshark filters   

## 🚨 Firewall Curiosity
- First and foremost, I just wanted to see how firewalls even worked. As I embark on my cybersecurity journey, I will continue to try new things to see where I fit in and what I'll be passionate enough about to explore further.
- I wanted to see how precise firewall rules could be. Blocking port 80 completely stopped HTTP traffic—even to safe sites. Allowing port 2222 let me run a custom TCP server and verify that traffic was permitted. Although I focused more on the port 80 blocking part, this showed me how firewalls enforce security policies and what happens when they are misconfigured.

## 📸 Screenshots
- Wireshark capture showing blocked and allowed traffic
- Terminal output of iptables rules and curl tests (Screenshots)
- Terminal input and output of Python Port 2222 set up

## 💡 Key Learnings
- Mastered basic iptables syntax and rule logic
- Understood TCP/IP, HTTP, and SSH protocols
- Learned to analyze traffic with Wireshark
- Improved Linux terminal navigation and troubleshooting
- Saw firsthand how firewall rules affect connectivity

## 🚀 Future Goals  
- My future goal is to complete a SIEM project using the skills I developed through my TryHackMe and LetsDefend training projects. I feel like after doing those, I don't know much so it will be nice to use Splunk or other SIEM software to get more experience. 
- I plan to apply what I’ve learned about packet analysis, firewall configuration, and network behavior to build a system that monitors, detects, and responds to security events in real time.
