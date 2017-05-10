FROM python:2.7.13-wheezy

RUN dpkg --add-architecture i386 && \
apt-get update && apt-get -y install wget git bzip2 make libc6:i386 && \
wget https://launchpad.net/gcc-arm-embedded/5.0/5-2016-q2-update/+download/gcc-arm-none-eabi-5_4-2016q2-20160622-linux.tar.bz2 && \
wget https://launchpad.net/gcc-arm-embedded/5.0/5-2016-q3-update/+download/gcc-arm-none-eabi-5_4-2016q3-20160926-linux.tar.bz2 && \
wget https://developer.arm.com/-/media/Files/downloads/gnu-rm/6-2016q4/gcc-arm-none-eabi-6_2-2016q4-20161216-linux.tar.bz2?product=GNU%20ARM%20Embedded%20Toolchain,64-bit,,Linux,6-2016-q4-major && \
wget https://developer.arm.com/-/media/Files/downloads/gnu-rm/6_1-2017q1/gcc-arm-none-eabi-6-2017-q1-update-linux.tar.bz2?product=GNU%20ARM%20Embedded%20Toolchain,64-bit,,Linux,6-2017-q1-update && \
mkdir -p /usr/local/bin/ && \
tar -xf gcc-arm-none-eabi-5_4-2016q2-20160622-linux.tar.bz2 -C /usr/local/bin/ && \
tar -xf gcc-arm-none-eabi-5_4-2016q3-20160926-linux.tar.bz2 -C /usr/local/bin/ && \
tar -xf gcc-arm-none-eabi-6_2-2016q4-20161216-linux.tar.bz2 -C /usr/local/bin/ && \
tar -xf gcc-arm-none-eabi-6-2017-q1-update-linux.tar.bz2 -C /usr/local/bin/ 

