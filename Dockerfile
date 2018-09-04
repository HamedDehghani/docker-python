FROM python:3.6-stretch
USER root
RUN mkdir app
WORKDIR /app

RUN apt-get update && apt-get install -y gcc && apt-get install -y git && apt-get -y install cron
RUN git clone 'https://github.com/HamedDehghani/docker-python.git'

WORKDIR /app/docker-python/
ENV PYTHONPATH /app/docker-python/
ENTRYPOINT git fetch --all && git reset --hard origin/master && git pull && chmod +x runProject.sh && pip install -r requirements.txt && ./runProject.sh
