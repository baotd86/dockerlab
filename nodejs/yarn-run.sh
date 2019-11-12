#!/bin/bash
set -e

if [ "$1" = 'nodejs' ]; then
    cd /home/node/app
    yarn && yarn start
fi

exec "$@"