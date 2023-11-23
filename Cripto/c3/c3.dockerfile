# Dockerfile para C3
FROM ubuntu:18.10

RUN sed -i 's/archive/old-releases/g' /etc/apt/sources.list
RUN sed -i '/^deb.*security.ubuntu.com/s/^/#/' /etc/apt/sources.list

RUN apt-get update && \
    apt-get install -y openssh-client

EXPOSE 22
   
