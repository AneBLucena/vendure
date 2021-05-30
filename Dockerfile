FROM node:16-alpine

RUN apk --no-cache --virtual build-dependencies add \
    python3 \
    make \
    g++

WORKDIR /app

COPY . .

RUN yarn && \
    yarn bootstrap && \
    yarn build

EXPOSE 3000
EXPOSE 4200

