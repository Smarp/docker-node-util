FROM node:6

ENV NPM_CONFIG_LOGLEVEL warn

RUN npm install --global \
karma-cli \
protractor \
grunt-cli \
;

RUN apt-get update
RUN apt-get install -y \
ruby-dev \
rubygems \
unzip \
gettext \
;

RUN gem update --system && gem install compass

VOLUME ["/mnt"]
WORKDIR /mnt
