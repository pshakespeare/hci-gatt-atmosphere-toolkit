FROM ubuntu:20.04


RUN echo 'APT::Install-Suggests "0";' >> /etc/apt/apt.conf.d/00-docker
RUN echo 'APT::Install-Recommends "0";' >> /etc/apt/apt.conf.d/00-docker

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y sudo

USER root

RUN apt-get update \
  && apt-get -y install make gcc mono-mcs  \
  && apt update && apt install -y tcl \ 
  && apt-get install -y ca-certificates openssl \
  && apt-get install -y python3 \
  && apt install -y python3-pip \
  && apt-get install -y bluez dbus \
  && apt install -y wget \
  && apt-get upgrade \
  && apt-get install -y tar xz-utils\
  && rm -rf /var/lib/apt/lists/* 


WORKDIR /toolkit
COPY  . /toolkit/

RUN pip3 install -r requirements.txt
RUN python3 atmosphere.py

RUN . ./bluetooth-utils.sh

ENTRYPOINT [ "" ]