#!/bin/bash

ROCKY_CONTENTDIR="${ROCKY_CONTENTDIR:-vault/rocky}"
ROCKY_RELEASEVER="${1:-9.2}"

sudo sed -i 's~^mirrorlist~#mirrorlist~' /etc/yum.repos.d/rocky*.repo
sudo sed -i 's~^#baseurl~baseurl~' /etc/yum.repos.d/rocky*.repo
sudo sed -i 's~http:~https:~' /etc/yum.repos.d/rocky*.repo

echo "$ROCKY_CONTENTDIR" | sudo tee /etc/yum/vars/contentdir >/dev/null
echo "$ROCKY_RELEASEVER" | sudo tee /etc/yum/vars/releasever >/dev/null
