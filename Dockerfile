FROM node:4.6.0

ENV NPM_CONFIG_LOGLEVEL warn

# npm@2.12.1 because https://github.com/npm/npm/issues/8982
RUN npm install --global \
npm@2.12.1 \
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
tslint \
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
