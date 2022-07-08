FROM ubuntu:22.04

WORKDIR /mnt/

# basic os stuff
RUN apt-get -y update \
    && apt-get -y upgrade \
    && apt-get -y install tzdata \
    && apt-get -y install build-essential

# python & pip
RUN apt -y install python3
RUN apt -y install python2-minimal
RUN apt -y install python3-pip

# utils
RUN apt -y install git
RUN apt -y install netcat
RUN apt -y install vim
RUN apt -y install gcc \
    && apt -y install g++ \
    && apt -y install gdb
RUN apt -y install make \
    && apt -y install cmake
RUN apt -y install valgrind \ 
    && apt -y install cppcheck
RUN pip install cpplint

RUN mkdir -p cpplint
COPY cpplint/* ./cpplint/