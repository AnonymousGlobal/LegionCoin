#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-legioncoinpay/legioncoind-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/legioncoind docker/bin/
cp $BUILD_DIR/src/legioncoin-cli docker/bin/
cp $BUILD_DIR/src/legioncoin-tx docker/bin/
strip docker/bin/legioncoind
strip docker/bin/legioncoin-cli
strip docker/bin/legioncoin-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
