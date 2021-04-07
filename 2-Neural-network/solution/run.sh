#!/bin/sh

docker run --rm -p 8888:8888 -v images:/root/notebooks/images --hostname ann ann-dream-solution
