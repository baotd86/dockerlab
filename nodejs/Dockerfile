FROM node:10-alpine as builder

ARG NODE_ENV=development
ENV NODE_ENV=${NODE_ENV}

RUN apk --no-cache add python make g++

FROM node:10-alpine

LABEL maintainer="Bao Tran <bao.tran@codeenginestudio.com>"

# Install curl
RUN apk update && \
    apk add curl

RUN echo http://dl-2.alpinelinux.org/alpine/edge/community/ >> /etc/apk/repositories
RUN apk --no-cache add shadow
RUN usermod --shell /bin/bash node

# COPY --from=builder /usr/local/bin/node /usr/local/bin/
# COPY --from=builder /usr/lib/ /usr/lib/

# Install Yarn
RUN apk add yarn

# Install webpack
RUN npm install -g webpack webpack-dev-server webpack-cli gulp-cli --no-optional

RUN webpack

WORKDIR /home/node/app

CMD [ "node" ]

EXPOSE 3000
