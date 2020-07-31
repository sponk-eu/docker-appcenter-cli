FROM node

RUN mkdir ~/.appcenter-cli \
    && echo false > ~/.appcenter-cli/telemetryEnabled.json \
    && npm install -g appcenter-cli \
    && npm install -g react-native-cli \
    && apk update \
    && apk add git openssh bash \
    && mkdir ~/.ssh/
