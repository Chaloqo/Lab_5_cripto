# Dockerfile para C4/S1
FROM ubuntu:20.10

RUN sed -i 's/archive/old-releases/g' /etc/apt/sources.list
RUN sed -i '/^deb.*security.ubuntu.com/s/^/#/' /etc/apt/sources.list

RUN apt-get update && \
    apt-get install -y sudo net-tools openssh-client openssh-server

RUN useradd -m test && \
    echo "test:test" | chpasswd

EXPOSE 22