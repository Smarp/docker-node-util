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
phantomjs-prebuilt \
;

RUN npm install --global npm@2.12.1
# https://github.com/npm/npm/issues/8982

RUN apt-get update
RUN apt-get install -y ruby-dev rubygems
RUN gem update --system && gem install compass

RUN apt-get install -y unzip

VOLUME ["/mnt"]
WORKDIR /mnt
