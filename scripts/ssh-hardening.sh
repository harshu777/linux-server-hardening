#!/bin/bash
# Baseline SSH hardening script

set -e

SSHD_CONFIG="/etc/ssh/sshd_config"

echo "Applying SSH hardening baseline..."

sed -i 's/^#\?PermitRootLogin.*/PermitRootLogin no/' $SSHD_CONFIG
sed -i 's/^#\?PasswordAuthentication.*/PasswordAuthentication no/' $SSHD_CONFIG
sed -i 's/^#\?MaxAuthTries.*/MaxAuthTries 3/' $SSHD_CONFIG

systemctl reload sshd

echo "Done. Verify SSH access before closing this session."

