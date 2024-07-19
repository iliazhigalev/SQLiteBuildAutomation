FROM alpine:3.19.0

LABEL maintainer="intern@gmail.com"

RUN apk update && \
    apk add --no-cache \
        cmake \
        gcc \
        g++ \
        make \
        sqlite-dev

RUN rm -rf /var/cache/apk/*
