FROM node:4.3.1

ENV NPM_CONFIG_LOGLEVEL warn

RUN npm install --global \
bower \
karma-cli \
protractor \
typings \
typescript \
tsd \
grunt-cli \
gulp-cli \
jspm \
;

RUN apt-get update
RUN apt-get install -y ruby-dev rubygems
RUN gem update --system && gem install compass

VOLUME ["/mnt"]
WORKDIR /mnt
