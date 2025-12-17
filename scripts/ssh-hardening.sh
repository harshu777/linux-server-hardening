k#!/bin/bash
# Baseline SSH Hardening Script
# Review before running in production

set -e

SSHD_CONFIG="/etc/ssh/sshd_config"

echo "[INFO] Applying SSH hardening baseline..."

# Disable root login
sed -i 's/^#\?PermitRootLogin.*/PermitRootLogin no/' $SSHD_CONFIG

# Disable password authentication
sed -i 's/^#\?PasswordAuthentication.*/PasswordAuthentication no/' $SSHD_CONFIG

# Limit authentication retries
sed -i 's/^#\?MaxAuthTries.*/MaxAuthTries 3/' $SSHD_CONFIG

# Set idle timeout
if ! grep -q "^ClientAliveInterval" $SSHD_CONFIG; then
  echo "ClientAliveInterval 300" >> $SSHD_CONFIG
fi

if ! grep -q "^ClientAliveCountMax" $SSHD_CONFIG; then
  echo "ClientAliveCountMax 2" >> $SSHD_CONFIG
fi

# Reload SSH service
systemctl reload sshd

echo "[SUCCESS] SSH hardening applied."
echo "[NOTICE] Verify SSH access before closing this session."

