FROM ubuntu:latest
MAINTAINER brenoafb

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install git curl unzip build-essential
RUN curl https://accellera.org/images/downloads/standards/systemc/systemc-2.3.3.zip -o systemc-2.3.3.zip
RUN unzip systemc-2.3.3.zip

WORKDIR /systemc-2.3.3/

RUN mkdir /usr/local/systemc231
RUN mkdir objdir

WORKDIR /systemc-2.3.3/objdir/
RUN export cxx=g++
RUN ../configure
RUN make
RUN make install
RUN echo 'export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/systemc-2.3.3/lib-linux64' >> ~/.bashrc
RUN echo "export SYSTEMC=/systemc-2.3.3/" >> ~/.bashrc


WORKDIR /root

RUN git clone https://github.com/brenoafb/systemc-helloworld.git
