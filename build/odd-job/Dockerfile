FROM debian:latest
ARG DOCKER_IMAGE_TAG=latest

RUN apt-get update && apt-get -y install \
 git \
 tar \
 wget \
 && rm -rf /var/lib/apt/lists/*

COPY ./ .

CMD ["tail","-f","/dev/null"]
