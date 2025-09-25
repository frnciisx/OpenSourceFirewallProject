🔥 Firewall Rules (iptables)

This page documents the firewall rules used in the **Open Source Firewall Project**.  
Each rule includes the command, its purpose, and how it was tested (with `curl`, `ping`, or Wireshark).  

---

## 📌 Default Policies
Before applying custom rules, the default policies were set to **ACCEPT** for a clean baseline.

```bash
sudo iptables -P INPUT ACCEPT
sudo iptables -P FORWARD ACCEPT
sudo iptables -P OUTPUT ACCEPT


  rules:
    - name: "Block HTTP traffic"
      description: "Block outbound HTTP traffic on port 80."
      command: "sudo iptables -A OUTPUT -p tcp --dport 80 -j DROP"
      test:
        command: "curl -4 http://127.0.0.1"
        expected_result: "Connection refused or failed"
        wireshark_filter: "tcp.port == 80"
        wireshark_result: "Red TCP SYN packets with no response"

    - name: "Allow local TCP traffic"
      description: "Allow inbound TCP traffic on port 2222 for Python server testing."
      command: "sudo iptables -A INPUT -p tcp --dport 2222 -j ACCEPT"
      test:
        server_command: "python3 -m http.server 2222"
        client_command: "curl -4 http://127.0.0.1:2222"
        expected_result: "Directory listing of home folder"
        wireshark_filter: "tcp.port == 2222"
        wireshark_result: "Normal TCP handshake and traffic flow"

    - name: "Allow ICMP (ping)"
      description: "Allow ICMP echo requests (ping)."
      command: "sudo iptables -A INPUT -p icmp -j ACCEPT"
      test:
        command: "ping -c 4 study-ccna.com"
        expected_result: "Ping replies received successfully"
