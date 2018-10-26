FROM debian:buster

RUN apt-get -y update

RUN apt-get -y install build-essential \
    debhelper \
    golang \
    git \
    btrfs-progs

RUN apt-get -y remove btrfs-progs
RUN apt-get -y install libbtrfs-dev
RUN apt-get -y install libseccomp-dev

RUN mkdir /work

WORKDIR /work