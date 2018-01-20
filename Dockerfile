FROM alpine:3.7

RUN apk add --no-cache autoconf \
    automake \
    build-base \
    curl \
    curl-dev \
    git \
    openssl-dev


RUN git clone https://github.com/tpruvot/cpuminer-multi -b linux

WORKDIR cpuminer-multi

RUN ./autogen.sh \
  && ./configure CFLAGS="-O3 -march=native" --with-crypto --with-curl \
  && make