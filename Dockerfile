FROM ubuntu:12.04
MAINTAINER Saad Farooq <sa@dfarooq.com>
RUN apt-get update
RUN apt-get install -y git git-core pkg-config make autoconf libtool g++ \
tcl unzip libyajl-dev libyajl1 qt4-qmake libsqlite3-dev curl \
gperf bison libglib2.0-dev libssl-dev libxi-dev \
libxrandr-dev libxfixes-dev libxcursor-dev libfreetype6-dev \
libxinerama-dev libgl1-mesa-dev libgstreamer0.10-dev \
libgstreamer-plugins-base0.10-dev flex libicu-dev \
xcb libx11-xcb-dev libxcb-sync0-dev \
libxcb1-dev libxcb-keysyms1-dev libxcb-image0-dev libxcb-render-util0-dev \
libxcb-icccm4-dev wget
RUN apt-get build-dep -y qt4-qmake
RUN git clone https://github.com/openwebos/build-desktop.git
CMD bash