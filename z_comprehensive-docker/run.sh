#!/bin/sh

docker run \
	-it \
	--rm \
	--env-file env-variables.lst \
	--hostname demo \
	--name comprehensive_docker \
	comprehensive-docker:2021
