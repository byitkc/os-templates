#!/bin/bash

echo "Removing and re-generating SSH Host Keys"

rm /etc/ssh/ssh_host_*

# Generating new SSH Keys for the host (ensuring that the host is identifying as a unique system)
ssh-keygen -q -N "" -t dsa -f /etc/ssh/ssh_host_dsa_key
ssh-keygen -q -N "" -t rsa -b 4096 -f /etc/ssh/ssh_host_rsa_key
ssh-keygen -q -N "" -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key
ssh-keygen -q -N "" -t ed25519 -b 521 -f /etc/ssh/ssh_host_ed25519_key

echo "Host Keys successfully regenerated"