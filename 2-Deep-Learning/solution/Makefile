IMAGE := deepdream

solution: build run

build: ## Build the image
	docker build . -t $(IMAGE)
run: ## Run the container
	docker run --rm -p 8888:8888 --hostname $(shell curl -s http://169.254.169.254/latest/meta-data/public-ipv4) $(IMAGE)