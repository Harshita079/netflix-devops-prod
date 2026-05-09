#!/bin/bash

docker rm -f netflix-app || true

docker run -d \
--name netflix-app \
-p 80:80 \
netflix-clone
