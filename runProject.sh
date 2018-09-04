#!/bin/bash

echo 'running main.py ...'
#grep -q -F '172.16.11.133 elastic02' /etc/hosts || echo '172.16.11.133 elastic02' >> /etc/hosts

#/var/spool/cron/crontabs/
crontab -l | { cat; echo "*/1 * * * * /usr/bin/python /app/docker-python/main.py"; } | crontab -
#service cron start
/etc/init.d/cron start

pip install --upgrade setuptools
python main.py
tail -F /dev/null
