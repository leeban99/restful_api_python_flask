FROM python:3.6-alpine

RUN apk update

RUN pip install --no-cache-dir pipenv

WORKDIR /usr/src/app

COPY cashman ./cashman

RUN python -m virtual venv

EXPOSE 5000

ENTRYPOINT["/usr/src/app/bootstrap.sh"]