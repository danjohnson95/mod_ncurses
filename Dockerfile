FROM php:8.3-cli

RUN apt-get update
RUN apt-get install -y libncurses5-dev libncursesw5-dev

COPY . /usr/src/ext

WORKDIR /usr/src/ext

RUN phpize \
  && ./configure \
  && make \
  && make install
