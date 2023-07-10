# syntax=docker/dockerfile:1
FROM python:3.8-slim-buster

## Allow statements and log messages to immediately appear in the Knative logs
#ENV PYTHONUNBUFFERED True

## Copy local code to the container image.
ENV APP_HOME /app
WORKDIR $APP_HOME
COPY . ./
RUN pip3 install -r requirements.txt

CMD ["python3", "-m" , "flask", "run", "--host=0.0.0.0"]