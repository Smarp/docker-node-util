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
;

VOLUME ["/mnt"]
WORKDIR /mnt
