FROM node:12.10.0-stretch

RUN apt-get update \
    && apt-get install -y git bash sudo \
    && npm install -g appcenter-cli --unsafe-perm

RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER node
RUN mkdir -p /home/node/app
WORKDIR /home/node/app

RUN mkdir ~/.appcenter-cli \
    && echo false > ~/.appcenter-cli/telemetryEnabled.json 
