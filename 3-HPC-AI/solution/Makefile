DOCKER_TAG  := whisper:1.4.0
ENROOT_SQSH := $(DOCKER_TAG).sqsh
ENROOT_IMG  := whispper:1.4.0

solution: build convert create start
build:
	docker build . -t $(DOCKER_TAG)
convert:
	if [ -f $(ENROOT_SQSH) ]; then rm -f $(ENROOT_SQSH); fi
	enroot import --output $(ENROOT_SQSH) dockerd://$(DOCKER_TAG)
create:
	enroot create --force --name $(ENROOT_IMG) $(ENROOT_SQSH)
start:
	enroot start --root --rw --mount /data:/data $(ENROOT_IMG)