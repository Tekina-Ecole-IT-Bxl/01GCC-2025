#!/bin/bash

docker build -t c-dev-env .

docker run -d \
  --name c-dev-container \
  -p 2224:22 \
  c-dev-env
