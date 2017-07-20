FROM python:3-alpine

RUN groupadd --gid 1000 dummy \
  && useradd --uid 1000 --gid dummy

RUN apk add --no-cache python git build-base python3-dev python-dev

RUN python -m ensurepip

RUN pip install tox

ENTRYPOINT ['tox']

COMMAND ['tox']
