FROM ubuntu:14.04

MAINTAINER Craftship Ltd <hello@craftship.io>

RUN apt-get update
RUN apt-get install curl default-jre unzip -y

ENV LEIN_ROOT 1

RUN curl -s https://raw.githubusercontent.com/technomancy/leiningen/2.6.1/bin/lein > \
            /usr/local/bin/lein && \
            chmod 0755 /usr/local/bin/lein && \
            /usr/local/bin/lein

