#!/usr/bin/env bash

docker run --rm -p 8888:8888 -v $(pwd):/home jupyter-base
