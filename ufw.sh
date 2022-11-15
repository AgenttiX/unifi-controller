#!/usr/bin/env bash
set -e

if [ "${EUID}" -ne 0 ]; then
   echo "This script should be run as root."
   exit 1
fi

ufw allow ssh comment "SSH"
ufw allow 8443 comment "UniFi management UI"
ufw allow 3478/udp comment "UniFi STUN"
ufw allow 10001/udp comment "UniFi AP discovery"
ufw allow 8080 comment "UniFi device communication"
ufw allow 1900/udp comment "UniFi controller L2 discovery"
ufw allow 8843 comment "UniFi guest portal HTTPS redirect"
ufw allow 8880 comment "UniFi guest portal HTTP redirect"
ufw allow 6789 comment "UniFi mobile throughput test"
ufw allow 5514/udp comment "UniFi remote syslog"
ufw enable
