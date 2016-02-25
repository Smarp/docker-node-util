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

VOLUME ["/root"]
WORKDIR /root
