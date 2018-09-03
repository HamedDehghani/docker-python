#!/bin/bash

echo 'running main.py ...'
#grep -q -F '172.16.11.133 elastic02' /etc/hosts || echo '172.16.11.133 elastic02' >> /etc/hosts
pip install --upgrade setuptools
python main.py
