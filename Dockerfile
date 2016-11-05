FROM phusion/baseimage
MAINTAINER João Ferreira <jdlferreira90@gmail.com>

# Ensure UTF-8
RUN locale-gen en_US.UTF-8
ENV LANG       en_US.UTF-8
ENV LC_ALL     en_US.UTF-8

CMD ["/sbin/my_init"]

# Update system and install build-essentials + Valgrind
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y update
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install build-essential
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install valgrind

# Volume dir
RUN mkdir -p /root/build
VOLUME /root/build

RUN DEBIAN_FRONTEND="noninteractive" apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
