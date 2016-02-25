FROM node:0.12.10

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

RUN apt-get update
RUN apt-get install -y ruby-dev rubygems
RUN gem update --system && gem install compass

VOLUME ["/mnt"]
WORKDIR /mnt
