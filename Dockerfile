# syntax=docker/dockerfile:1
FROM python:3.8-slim-buster

## Allow statements and log messages to immediately appear in the Knative logs
#ENV PYTHONUNBUFFERED True

## Copy local code to the container image.
ENV APP_HOME /app
WORKDIR $APP_HOME
COPY . .

#COPY --chmod=755 run run
#COPY run run
#RUN dir -s

RUN pip3 install -r requirements.txt

EXPOSE $PORT

CMD ["python3", "-m" , "flask", "run", "--host=0.0.0.0"]

#ENTRYPOINT ["python3", "-m" , "flask", "run", "--host=0.0.0.0"]

#COPY --chmod=755 <<EOF /app/run.sh
##!/bin/sh
#while true; do
#  echo -ne "The time is now $(date +%T)\\r"
#  sleep 1
#done
#EOF

#ENTRYPOINT run