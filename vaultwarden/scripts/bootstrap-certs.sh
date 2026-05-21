#!/usr/bin/env bash
set -euo pipefail
mkdir -p vaultwarden/certs
openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
  -keyout vaultwarden/certs/localhost-key.pem \
  -out vaultwarden/certs/localhost.pem \
  -subj "/CN=localhost"
echo "Certificados gerados em vaultwarden/certs/"
