FROM node:8.11-alpine

RUN sudo npm install -g appcenter-cli \
    && sudo npm install -g react-native-cli \
    && apk update \
    && apk add git openssh bash \
    && mkdir ~/.ssh/
