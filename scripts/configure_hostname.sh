#!/bin/bash

ROCKY_HOSTNAME="${ROCKY_HOSTNAME:-ipa.localhost}"

sudo hostnamectl set-hostname "$ROCKY_HOSTNAME"
