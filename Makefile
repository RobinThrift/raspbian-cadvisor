DOCKER_IMAGE_VERSION=0.18.0
DOCKER_IMAGE_NAME=robinthrift/raspbian-cadvisor
DOCKER_IMAGE_TAGNAME=$(DOCKER_IMAGE_NAME):$(DOCKER_IMAGE_VERSION)

default: build

build:
		docker build -t $(DOCKER_IMAGE_TAGNAME) .
		docker tag -f $(DOCKER_IMAGE_TAGNAME) $(DOCKER_IMAGE_NAME):latest

push:
		docker push $(DOCKER_IMAGE_NAME)

test:
		docker run --volume=/:/rootfs:ro --volume=/var/run:/var/run:rw --volume=/sys:/sys:ro --volume=/var/lib/docker/:/var/lib/docker:ro --publish=8081:8080 --name=cadvisor_test  $(DOCKER_IMAGE_TAGNAME)
