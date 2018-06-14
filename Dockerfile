FROM node:8.11-alpine

RUN npm install -g appcenter-cli \
    && apk update \
    && apk add git openssh \
    && ssh-keyscan -t rsa github.com >> ~/.ssh/known_hosts
