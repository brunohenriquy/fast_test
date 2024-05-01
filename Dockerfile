FROM node:20-alpine

RUN set -x \
    && apk update \
    && apk upgrade \
    && apk add --no-cache \
    chromium

RUN npm install --global fast-cli

WORKDIR /app

CMD ["fast", "-u"]
