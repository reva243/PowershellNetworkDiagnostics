PowerShell Network Diagnostics Script
Overview
This PowerShell script is designed to perform a series of network diagnostics on a Windows machine. It provides a quick and comprehensive overview of the network's current status, including configuration details, connectivity, and active connections. This tool is particularly useful for network administrators and support personnel for initial troubleshooting of network issues.

Features
Retrieves full IP configuration for all network interfaces.
Pings the IPv4 and IPv6 loopback addresses to test the local TCP/IP stack.
Tests external connectivity by pinging google.com.
Traces the route taken to google.com to identify any routing issues.
Performs a DNS lookup for google.com to verify DNS resolution.
Lists all active connections and ports currently listening for incoming connections.
Commands Summary
ipconfig /all: Displays detailed information about the current IP configuration of all network interfaces.

ping 127.0.0.1 and ping ::1: Sends ICMP packets to the loopback address for both IPv4 and IPv6 to ensure the stack is operational.

ping google.com -n 4: Sends 4 ICMP echo requests to google.com to test internet connectivity.

tracert -d google.com: Traces the path packets take to reach google.com, showing each hop along the route.

nslookup google.com: Looks up the DNS record for google.com to test DNS server response and resolution.

netstat -anob: Displays active network connections, ports on which the computer is listening, Ethernet statistics, the IP routing table, IPv4 statistics (for the IP, ICMP, TCP, and UDP protocols), and IPv6 statistics (for the IPv6, ICMPv6, TCP over IPv6, and UDP over IPv6 protocols).

Usage
To run the script, you will need to have administrative privileges on the Windows host machine. Open PowerShell as an administrator and execute the script. The script outputs the diagnostics in sequence, with clear headers and in different colors for easy identification of each step.

Ensure that you review the output of each command carefully for any anomalies or unexpected results that could indicate network issues.

Notes
The script execution time may vary depending on network conditions and system performance.
Some commands may require modifications based on specific network configurations or for use in different troubleshooting scenarios.
Always run network diagnostic tools with the understanding that they can generate significant network traffic, and should therefore be used responsibly.
