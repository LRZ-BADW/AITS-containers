TAG    := whisper:1.4.0
ENROOT := $(TAG).sqsh

all: build convert create start
build:
	docker build . -t $(TAG)
convert:
	if [ -f $(ENROOT) ]; then rm -f $(ENROOT); fi
	enroot import --output $(ENROOT) dockerd://$(TAG)
create:
	enroot create --force --name whisper $(ENROOT)
start:
	enroot start --root --rw --mount /data:/data whisper
