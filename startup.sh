#!/bin/bash

sudo apt-get install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible

echo "[blackbox]" >> /etc/ansible/hosts
echo "127.0.0.1" >> /etc/ansible/hosts

ansible-playbook blackbox.yml --connection=local