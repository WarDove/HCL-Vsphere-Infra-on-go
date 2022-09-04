#!/bin/bash

echo '> Installing Vault binaries ...'
curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add -
apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
apt-get update
apt install -y consul=1.13.1-1
apt install vault=1.11.2-1
