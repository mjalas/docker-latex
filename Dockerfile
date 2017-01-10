FROM ubuntu:14.04
MAINTAINER mats.jalas@gmail.com

RUN mkdir /home/data
RUN mkdir /home/document
COPY setup.sh /home/data/setup.sh
WORKDIR /home/data
RUN chmod +x setup.sh
RUN ./setup.sh

VOLUME ["/home/document"]
WORKDIR /home/document