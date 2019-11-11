FROM debian:stable

RUN dpkg --add-architecture i386 && \ 
  cat 'deb http://deb.debian.org/debian stable non-free' >> /etc/apt/sources.list && \
  apt-get update && apt-get upgrade -y && \
  echo steam steam/question select "I AGREE" | debconf-set-selections && \
  echo steam steam/license note '' | debconf-set-selections && \
  apt-get install -y ca-certificates wget zip unzip rsync git openssh-client \
  ca-certificates wget python3 python3-pip rsync steamcmd