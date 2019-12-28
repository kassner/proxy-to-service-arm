.PHONY: all container push

TAG = v1
PREFIX = kassner
NAME = proxy-to-service-arm

all: container

container:
	docker build --pull -t $(PREFIX)/$(NAME):$(TAG) .

push:
	docker -- push $(PREFIX)/$(NAME):$(TAG)
