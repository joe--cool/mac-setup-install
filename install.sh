#!/usr/bin/env bash

set -u
set -e


function log_msg {
    echo "####################################################################################################"
    echo "# $1"
    echo "####################################################################################################"
}

log_msg "Create directory for configuration scripts to live"
mkdir -p ~/git_repos/configure-mac
cd ~/git_repos/configure-mac

log_msg "Download mac-dev-playbook repo"
rm -rf mac-dev-playbook
git clone https://github.com/joe--cool/mac-dev-playbook
cd mac-dev-playbook

log_msg "Install pip"
curl https://bootstrap.pypa.io/get-pip.py -o /tmp/get-pip.py
python3 /tmp/get-pip.py --user

log_msg "Install ansible"
python3 -m pip install --user ansible

log_msg "Install ansible requirements"
ansible-galaxy install -r requirements.yml -v

log_msg "Install ansible playbook"
ansible-playbook main.yml -i inventory --ask-become-pass
