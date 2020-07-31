FROM node:12.10.0-slim

# USER node
# RUN mkdir -p /home/node/app
# WORKDIR /home/node/app

RUN mkdir ~/.appcenter-cli \
    && echo false > ~/.appcenter-cli/telemetryEnabled.json \
    && npm --global config set user root \
    && npm install -g appcenter-cli \
    && npm install -g react-native-cli \
    && apk update \
    && apk add git openssh bash \
    && mkdir ~/.ssh/
