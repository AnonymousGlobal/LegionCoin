FROM debian:stretch
LABEL maintainer="LegionCoin Developers <dev@legioncoin.org>"
LABEL description="Dockerised LegionCoinCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
