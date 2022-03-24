FROM debian:8

RUN apt update

RUN apt install  openssh-server sudo -y

RUN useradd -rm -d /home/debian -s /bin/bash -g root -G sudo -u 1000 demo

RUN usermod -aG sudo demo

RUN service ssh start

RUN  echo 'demo:demo' | chpasswd

EXPOSE 22
