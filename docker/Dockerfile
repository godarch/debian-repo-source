FROM debian:buster

RUN apt-get -y update

RUN apt-get -y install build-essential \
    debhelper \
    golang \
    git

RUN mkdir /work

WORKDIR /work