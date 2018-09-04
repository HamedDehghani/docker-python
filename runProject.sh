#!/bin/bash

echo 'run project script ...'

#/var/spool/cron/crontabs/
crontab -l | { cat; echo "*/1 * * * * /usr/bin/python /app/docker-python/main.py"; } | crontab -

#service cron start
/etc/init.d/cron start

pip install --upgrade setuptools
python main.py
tail -F /dev/null
