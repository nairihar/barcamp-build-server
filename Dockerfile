FROM node:8-alpine

ARG npm_token
ENV TOKEN=$npm_token

ENV MY_HOME=/usr/local/barcamp
WORKDIR $MY_HOME

ADD source.tar.gz $MY_HOME

RUN ["sh", "./scripts/create-package.sh"]
