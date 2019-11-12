FROM node:10-alpine

LABEL maintainer="Bao Tran <bao.tran@codeenginestudio.com>"

# Install curl
RUN apk update && \
    apk add curl

RUN echo http://dl-2.alpinelinux.org/alpine/edge/community/ >> /etc/apk/repositories
RUN apk --no-cache add shadow
RUN usermod --shell /bin/bash node

# Install Yarn
RUN apk add yarn

WORKDIR /home/node/app

EXPOSE 3000
