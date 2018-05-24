FROM jenkins/jenkins:lts-slim

ENV PACKAGES "sudo git tar apt-transport-https gnupg2 ca-certificates openssl bash curl wget bc awscli"

ENV DOCKER_VERSION 18.03.1~ce-0~debian

WORKDIR /

USER root

RUN id; \
    set -e; \
    apt-get update -y; \
    apt-get install -y ${PACKAGES}; \
    echo "deb [arch=amd64] https://download.docker.com/linux/debian stretch stable" > /etc/apt/sources.list.d/docker.list; \
    curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -; \
    apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823; \
    apt-get update -y; \
    apt-get install -y --allow-downgrades docker-ce=$DOCKER_VERSION; \
    apt-get clean; \
    curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose; \
    chmod +x /usr/local/bin/docker-compose; \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY Dockerfile /Dockerfile

USER jenkins