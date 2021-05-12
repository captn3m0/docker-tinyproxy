FROM alpine:3.13.5

MAINTAINER Nemo <dockerfile@captnemo.in>

RUN apk add --no-cache tinyproxy dumb-init

COPY default.conf /etc/tinyproxy/tinyproxy.conf

COPY init /init

ENTRYPOINT ["/init"]
