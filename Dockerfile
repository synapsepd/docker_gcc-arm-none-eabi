FROM ubuntu:xenial

RUN dpkg --add-architecture i386 && \
apt-get update && apt-get -y install wget git bzip2 make libc6:i386 && \
wget https://launchpad.net/gcc-arm-embedded/5.0/5-2016-q2-update/+download/gcc-arm-none-eabi-5_4-2016q2-20160622-linux.tar.bz2 && \
mkdir -p /usr/local/bin/ && \
tar -xf gcc-arm-none-eabi-5_4-2016q2-20160622-linux.tar.bz2 -C /usr/local/bin/ && \
export PATH=/usr/local/bin/gcc-arm-none-eabi-5_4-2016q2/bin:$PATH
