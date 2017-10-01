FROM node:8

ENV NPM_CONFIG_LOGLEVEL warn

RUN apt-get update
RUN apt-get install -y \
unzip \
;

VOLUME ["/mnt"]
WORKDIR /mnt
