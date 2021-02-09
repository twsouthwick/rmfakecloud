#!/bin/sh

# This starts the webpack devserver and proxies the api requests to the backend

export JWT_SECRET_KEY=dev
export LOGLEVEL=DEBUG
#make prep
make devui &
PID=$!
trap "kill $PID" EXIT 
make dev 
