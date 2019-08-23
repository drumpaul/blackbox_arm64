#!/bin/bash
echo "!!!CIAO!!!" > /ciao.txt

rm -f /tmp/firstboot.sh /etc/rc.local
ros c set write_files []
