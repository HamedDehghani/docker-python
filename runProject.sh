#!/bin/bash

echo 'running...'
#grep -q -F '172.16.11.133 elastic02' /etc/hosts || echo '172.16.11.133 elastic02' >> /etc/hosts
pip install --upgrade setuptools
python ./docker-python/main.py
