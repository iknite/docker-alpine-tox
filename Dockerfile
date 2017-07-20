FROM python:3-alpine

RUN addgroup -S -g 1000 dummy \
  && adduser -D -H -u 1000 -G dummy

RUN apk add --no-cache python git build-base python3-dev python-dev

RUN python -m ensurepip

RUN pip install tox
