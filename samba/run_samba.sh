#!/bin/bash

#DA TESTARE FONTE:
#https://hub.docker.com/r/elswork/samba
docker run -d -p 137:137/udp -p 138:138/udp -p 139:139 -p 445:445 -p 445:445/udp --hostname 'filer' -v /mnt/store/smb:/share/folder  elswork/samba -u "your_username:your_password" -s "FileShare:/share/folder:rw:your_username"
