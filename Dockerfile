FROM alpine:3.7
MAINTAINER ernestgwilsonii@gmail.com

RUN apk add --no-cache ansible py-pip \
    && pip install --upgrade pip \
    && pip install "ansible==2.5.5"
