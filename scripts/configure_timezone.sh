#!/bin/bash

TIMEZONE="${TIMEZONE:-Europe/Belgrade}"

sudo timedatectl set-timezone "$TIMEZONE"
sudo unlink /etc/localtime
sudo ln -s "/usr/share/timezone/$TIMEZONE" /etc/localtime
