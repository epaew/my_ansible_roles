ROLE_NAME := common

all: test-all

test-all: test-ubuntu

test-ubuntu: UBUNTU_BASE_TAG := focal
test-ubuntu:
	docker build -f test/Dockerfiles/Dockerfile.ubuntu \
		--build-arg BASE_TAG=$(UBUNTU_BASE_TAG) \
		--build-arg ROLE_NAME=$(ROLE_NAME) \
		.
