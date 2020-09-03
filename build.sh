#!/usr/bin/env bash

VERSION=$(sentry-cli releases propose-version || exit)

docker build -t "as207960/portal:$VERSION" . || exit
docker push "as207960/portal:$VERSION" || exit
