#!/usr/bin/env bash

set -u
set -e

# Create directory for configuration scripts to live
mkdir -p ~/git_repos/configure-mac
cd ~/git_repos/configure-mac

# Download mac-dev-playbook repo
rm -rf mac-dev-playbook
git clone https://github.com/joe--cool/mac-dev-playbook
cd mac-dev-playbook

