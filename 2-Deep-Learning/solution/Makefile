IMAGE := deepdream

solution: build run

build: ## Build the image
	docker build . -t $(IMAGE)
run: ## Run the container
	docker run --rm -p 8888:8888 --hostname DeepDream $(IMAGE)