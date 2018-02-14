FROM debian:9

RUN apt-get update && \
    apt-get install -y python \
                       python3 \
                       python-pip \
                       python3-pip \
                       python-tk \
                       python3-tk \
                       sudo && \
    useradd -ms /bin/bash python && \
    usermod -aG sudo python

USER python

WORKDIR /app
