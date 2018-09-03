#!/bin/bash

echo 'Running DataSaver...'

echo 'd[ o_0 ]b'

grep -q -F '172.16.11.133 elastic02' /etc/hosts || echo '172.16.11.133 elastic02' >> /etc/hosts

pip install --upgrade setuptools

python ./DataSaver/run.py
