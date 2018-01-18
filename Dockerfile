FROM ubuntu:16.04

RUN apt-get update -y \
 && apt-get install -y automake autoconf pkg-config libcurl4-openssl-dev libssl-dev libjansson-dev libgmp-dev make g++ git

RUN git clone https://github.com/tpruvot/cpuminer-multi -b linux

WORKDIR cpuminer-multi

RUN ./build.sh