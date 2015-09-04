#!/bin/bash

apt-get update && apt-get -y install ansible

echo "[blackbox]\n127.0.0.1" >> /etc/ansible/hosts