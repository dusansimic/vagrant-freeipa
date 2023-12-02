#!/bin/bash

HOSTS_IP="${HOSTS_IP:-10.255.0.10}"
HOSTS_DOMAIN="${HOSTS_DOMAIN:-ipa.localhost}"

echo "$HOSTS_IP $HOSTS_DOMAIN" | sudo tee -a /etc/hosts >/dev/null
