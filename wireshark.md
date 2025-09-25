# Wireshark Analysis – Open Source Firewall Project

Captured traffic using Wireshark to verify firewall behavior. Focused on HTTP (port 80) and SSH/TCP (port 2222).

Filters used:
tcp.port == 80  
tcp.port == 2222  
tcp.port == 53 - for fun and exploring  

Blocked traffic appeared as red TCP SYN packets with no response.  
Allowed traffic showed full TCP handshakes and data exchange (green or blue packets).

Screenshots included in the Screenshots/ folder:
- Blocked HTTP request
- Allowed SSH/TCP connection

Confirmed that iptables rules were working as expected based on packet flow and response behavior.
