## ⚙️ Firewall Rules
Below are some of the key rules I used during the project.

```bash
# Block HTTP traffic (port 80)
sudo iptables -A OUTPUT -p tcp --dport 80 -j DROP

# Allow local TCP traffic on port 2222
sudo iptables -A INPUT -p tcp --dport 2222 -j ACCEPT

# Allow ping (ICMP)
sudo iptables -A INPUT -p icmp -j ACCEPT

# Default policies (safe for testing)
sudo iptables -P INPUT ACCEPT
sudo iptables -P FORWARD ACCEPT
sudo iptables -P OUTPUT ACCEPT
