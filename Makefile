.PHONY: all build release

all: release

build:
	docker build -t "janeczku/debian-nginx" .

release: build
	docker push janeczku/debian-nginx
