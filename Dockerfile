FROM python:3

ENV PYTHONUNBUFFERED 1

WORKDIR /usr/src/app

USER root

COPY . .

RUN pip3 install pipenv

RUN pipenv install --system --deploy --ignore-pipfile
