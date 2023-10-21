#!/bin/sh
# This is the command to be executed when the container starts

jupyter lab --allow-root --notebook-dir=. --ip=0.0.0.0 --port=8888 --no-browser