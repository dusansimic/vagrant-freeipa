#!/bin/bash

sudo systemctl enable --now firewalld
sudo firewall-cmd --add-service={freeipa-ldap,freeipa-ldaps,dns,ntp,http,https,kerberos} --permanent
sudo firewall-cmd --reload
