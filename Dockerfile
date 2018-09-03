FROM python:3.6-stretch
USER root
RUN mkdir app
WORKDIR /app

RUN apt-get update
RUN apt-get install -y gcc
RUN apt-get install -y git
#RUN git clone 'https://hameddehghani:@github.com/docker-python.git'

WORKDIR /app/docker-python-test/
ENV PYTHONPATH /app/docker-python-test/

ENTRYPOINT git fetch --all && git reset --hard origin/master && git pull && chmod +x ./bin/runProject.sh && pip install -r requirements.txt && ./bin/runProject.sh
