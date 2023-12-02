#!/bin/bash

sudo sed -i 's~SELINUX=enforcing~SELINUX=permissive~' /etc/selinux/config
