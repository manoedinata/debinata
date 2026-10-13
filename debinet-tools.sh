#!/bin/bash
cat << "EOF"
=== DebiNet Available Tools ===

NETWORK UTILITIES:
  - IP/Interface: ip, ifconfig, route, arp
  - Connectivity: ping, traceroute, mtr, arping
  - Scanning: nmap, tcpdump
  - HTTP/Web: curl, wget, lynx
  - TCP/UDP: netcat (nc), socat, telnet
  - Performance: iperf, iperf3
  - Advanced: ethtool, bridge-utils (brctl), vlan (vconfig)

FIREWALL TOOLS:
  - IPv4/IPv6: iptables, ip6tables
  - Modern: nftables (nft)

FILE TRANSFER:
  - FTP: lftp
  - TFTP: tftp
  - SSH: ssh, scp, sftp (openssh-client)
  - Sync: rsync

DNS TOOLS:
  - Lookup: host, nslookup, dig

EDITORS:
  - vi, nano

TERMINAL MULTIPLEXERS:
  - tmux, screen

SYSTEM MONITORING:
  - Process: htop, top, ps
  - Resources: free, vmstat

TEXT PROCESSING:
  - Viewing: less, cat
  - Search: grep, find
  - Processing: sed, awk (gawk)
  - JSON: jq

COMPRESSION/ARCHIVING:
  - tar, gzip, gunzip

UTILITIES:
  - tree - directory visualization
  - file - identify file types
  - openssl - SSL/TLS toolkit

SHELL:
  - bash (with completion support)

EOF
