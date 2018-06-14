FROM node:8.11-alpine

RUN npm install -g appcenter-cli \
    && npm install -g react-native-cli \
    && apk update \
    && apk add git openssh bash \
    && mkdir ~/.ssh/
