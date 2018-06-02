###############################################################################
# Name:         Dockerfile
# Author:       Daniel Middleton <daniel-middleton.com>
# Description:  Dockerfile used to build dannydirect/tinyproxy
# Usage:        docker build -t dannydirect/tinyproxy:latest .
###############################################################################

FROM alpine:3.7

MAINTAINER Nemo <dockerfile@captnemo.in>

RUN apk add --no-cache tinyproxy dumb-init

COPY init /init

ENTRYPOINT ["/init"]
