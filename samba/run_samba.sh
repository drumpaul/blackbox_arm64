#!/bin/bash

docker run --name samba -p 139:139 -p 445:445 -v /home/cotlod:/mount -d dperson/samba -s "data;/mount;yes;no;yes;all;no;comment]" -p
