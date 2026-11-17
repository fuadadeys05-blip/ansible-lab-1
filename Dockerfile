FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    ansible \
    openssh-client \
    sshpass \
    python3 \
    python3-pip \
    nano \
    vim \
    iputils-ping \
    curl \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /ansible

CMD ["tail", "-f", "/dev/null"]