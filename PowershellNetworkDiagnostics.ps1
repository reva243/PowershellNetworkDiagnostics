# Improved Network Diagnostics Script

Write-Host "BEGINNING NETWORK DIAGNOSTICS" -ForegroundColor Cyan

# Display all TCP/IP network configuration values
Write-Host "Gathering IP Configuration..."
ipconfig /all

# Ping the loopback address to test IPv4 stack
Write-Host "PINGING LOOPBACK ADDRESS IPv4 (127.0.0.1)"
ping 127.0.0.1

# Ping the loopback address to test IPv6 stack
Write-Host "PINGING LOOPBACK ADDRESS IPv6 (::1)"
ping ::1

# Ping Google to test internet connectivity
Write-Host "PINGING GOOGLE.COM"
ping google.com -n 4

# Trace the route packets take to Google to see where problems might be occurring
Write-Host "TRACING ROUTE TO GOOGLE.COM"
tracert -d google.com

# Perform a DNS lookup for Google.com to verify DNS resolution
Write-Host "PERFORMING DNS LOOKUP FOR GOOGLE.COM"
nslookup google.com

# Check listening ports and established network connections
Write-Host "CHECKING ACTIVE CONNECTIONS AND LISTENING PORTS"
netstat -anob

Write-Host "DIAGNOSTICS COMPLETE! REVIEW THE OUTPUT FOR ANY ISSUES." -ForegroundColor Green
