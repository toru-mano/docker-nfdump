CMD = docker build
ARG = --build-arg http_proxy="${http_proxy}"
ARG += --build-arg https_proxy="${https_proxy}"
ARG += --build-arg no_proxy="${no_proxy}"

NAME = torumano
IMAGE  = nfdump

.PHONY: all latest 14.04 16.04 18.04 20.04

# push-latest push-18.04 push-20.04 push

all: latest 14.04 16.04 18.04 20.04 latest

latest: Dockerfile
	$(CMD) $(ARG) -t $(NAME)/$(IMAGE):$@ .

14.04: 14.04/Dockerfile
	$(CMD) $(ARG) -t $(NAME)/$(IMAGE):$@ $@

16.04: 16.04/Dockerfile
	$(CMD) $(ARG) -t $(NAME)/$(IMAGE):$@ $@

18.04: 18.04/Dockerfile
	$(CMD) $(ARG) -t $(NAME)/$(IMAGE):$@ $@

20.04: 20.04/Dockerfile
	$(CMD) $(ARG) -t $(NAME)/$(IMAGE):$@ $@
