IMAGE := deepdream

solution: build run
build:
	docker build . -t $(IMAGE)
run:
	docker run --rm -p 8888:8888 -v images:/root/notebooks/images --hostname DeepDream $(IMAGE)