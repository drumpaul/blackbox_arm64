#!/bin/bash

sudo apt-get update
sudo apt-get -y install git ansible
git clone git clone https://github.com/drumpaul/blackbox
cd blackbox

ansible-playbook blackbox.yml --connection=local
