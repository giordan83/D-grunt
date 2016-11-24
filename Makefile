# Build the image.
.PHONY: build
build:
	docker build -t giordan/d-grunt -f Dockerfile .

# Stop and remove all containers.
.PHONY: clean
clean:
	docker stop grunt-container
	docker rm grunt-container

# Remove the image.
.PHONY: clean-image
clean-image:
	docker rmi giordan/d-grunt

# List all containers.
.PHONY: ls
ls:
	docker ps -a

# List all images.
.PHONY: ls-images
ls-images:
	docker images

# Run the interactive container.
.PHONY: run
run:
	docker run -i -t --name grunt-container giordan/d-grunt
