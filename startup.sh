#!/bin/bash

MY_IP=127.0.0.1
sudo apt-get update
sudo apt-get -y install ansible

cp /etc/ansible/hosts /etc/ansible/hosts.orig
echo "[blackbox]" >> /etc/ansible/hosts
echo "$MY_IP" >> /etc/ansible/hosts

ansible-playbook blackbox.yml --connection=local
