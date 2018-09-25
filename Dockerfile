FROM node:8.4.0-alpine

ENV HUGO_VERSION 0.49
ENV HUGO_BINARY hugo_0.49_Linux-64bit
ENV HUGO_ENV production

RUN set -x && \
  apk add --update wget ca-certificates && \
  wget https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/${HUGO_BINARY}.tar.gz && \
  tar -xzf ${HUGO_BINARY}.tar.gz && \
  rm -r ${HUGO_BINARY}.tar.gz && \
  mv hugo /usr/bin/hugo

COPY yarn.lock package.json ./
RUN yarn
COPY . .
RUN ./node_modules/.bin/gulp css scripts && \
  hugo && \
  ./node_modules/.bin/gulp post-process && \
  apk del wget ca-certificates && \
  rm /var/cache/apk/*
