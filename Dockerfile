FROM python:3

ENV PYTHONUNBUFFERED 1

WORKDIR /usr/src/app

USER root

COPY . .

RUN pip3 install pipenv

RUN pipenv install --system --deploy --ignore-pipfile

RUN chmod +x ./entrypoint.sh
RUN chmod +x ./wait-for-postgres.sh

# CMD ['python3', 'manage.py', 'runserver', '0.0.0.0:8990']