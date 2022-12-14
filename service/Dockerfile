FROM ubuntu:20.04


RUN echo 'APT::Install-Suggests "0";' >> /etc/apt/apt.conf.d/00-docker
RUN echo 'APT::Install-Recommends "0";' >> /etc/apt/apt.conf.d/00-docker

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
  && apt install sudo \
  && apt update && apt install -y tcl \ 
  && apt-get install -y ca-certificates openssl \
  && apt-get install -y python3 \
  && apt-get install -y bluez dbus \
  && apt install -y wget \
  && apt-get upgrade \
  && apt-get install -y tar xz-utils\
  && apt-get -y install libglib2.0-dev libdbus-1-dev libusb-dev libudev-dev libical-dev \
  && wget https://www.kernel.org/pub/linux/bluetooth/bluez-5.18.tar.xz \
  && dpkg --get-selections | grep -v deinstall | grep bluez \
  # && tar xvf bluez-5.18.tar.xz \
  # && systemd libreadline-dev \
  # && .configure --enable-library \
  # && make -j8 && sudo make install \
  # && cp attrib/gatttool /usr/local/bin/ \
  && rm -rf /var/lib/apt/lists/* 

RUN useradd -ms /bin/bash atmosphere
RUN usermod -aG sudo atmosphere


USER atmosphere

WORKDIR /toolkit
COPY  . /toolkit/

RUN . ./bluetooth-utils.sh

ENTRYPOINT [ "" ]