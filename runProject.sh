#!/bin/bash

echo 'running main.py ...'
#grep -q -F '172.16.11.133 elastic02' /etc/hosts || echo '172.16.11.133 elastic02' >> /etc/hosts

#/var/spool/cron/crontabs/
crontab -l | { cat; echo "*/1 * * * * root /usr/bin/python /app/main.py"; } | crontab -
crontab -l
pip install --upgrade setuptools
#python main.py
