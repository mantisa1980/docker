FROM ubuntu:14.04

MAINTAINER duyhsieh


RUN echo "deb http://free.nchc.org.tw/ubuntu/ trusty main restricted universe multiverse" > /etc/apt/sources.list
RUN echo "deb http://free.nchc.org.tw/ubuntu/ trusty-security main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb http://free.nchc.org.tw/ubuntu/ trusty-updates main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb http://free.nchc.org.tw/ubuntu/ trusty-proposed main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb http://free.nchc.org.tw/ubuntu/ trusty-backports main restricted universe multiverse" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y openssh-server

RUN adduser --quiet --disabled-password -shell /bin/bash --gecos "User" igs 
RUN echo "igs:igs" | chpasswd
RUN adduser igs sudo

RUN mkdir -p /var/run/sshd
ADD run.sh /run.sh
RUN chmod 755 /run.sh

EXPOSE 22

CMD ["/run.sh"]
