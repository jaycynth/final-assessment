DOCKER_USER = jaycynth
IMAGE_NAME = go-http-server
TAG ?= latest
FULL_IMAGE_NAME = $(DOCKER_USER)/$(IMAGE_NAME):$(TAG)


docker_build:
	docker build -t $(FULL_IMAGE_NAME) .

docker_push:
	docker push $(FULL_IMAGE_NAME)

build_service: docker_build docker_push