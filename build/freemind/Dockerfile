FROM debian:stable-slim as build
ARG DOCKER_IMAGE_TAG=1.0.1
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get -y install \
 curl \
 unzip

RUN curl -LOsS http://downloads.sourceforge.net/project/freemind/freemind/1.0.1/freemind-bin-max-1.0.1.zip

RUN mkdir -p /JavaPrograms \
 && unzip freemind-bin-max-1.0.1.zip -d /JavaPrograms



FROM debian:unstable-slim
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get -y install \
 openjdk-11-jre \
 && rm -rf /var/lib/apt/lists/*

COPY --from=build /JavaPrograms/ /JavaPrograms/

RUN chmod +x /JavaPrograms/freemind.sh \
 && ln -s /JavaPrograms/freemind.sh /usr/local/bin/freemind

RUN echo 'user:x:501:20:User:/home/user:/bin/false' >>/etc/passwd \
 && echo 'user:x:1000:1000:User:/home/user:/bin/false' >>/etc/passwd

COPY ./ /
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["freemind"]
USER 1000
