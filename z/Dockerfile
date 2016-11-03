
FROM rancher/os-ubuntuconsole:v0.7.0-rc5
# ${SUFFIX}

# https://github.com/zfsonlinux/zfs/wiki/Custom-Packages#kmod-rpm-and-deb

WORKDIR /usr/src

RUN apt-get install build-essential gawk alien fakeroot gdebi \
	zlib1g-dev uuid-dev libattr1-dev libblkid-dev libselinux-dev libudev-dev parted lsscsi wget ksh

RUN git clone https://github.com/zfsonlinux/spl.git \
    git clone https://github.com/zfsonlinux/zfs.git \
    cd spl \
    ./autogen.sh \
    cd ../zfs \
    ./autogen.sh \
    cd ..

RUN cd spl \
    ./configure \
    make pkg-utils pkg-kmod \
    for file in *.deb; do sudo gdebi -q --non-interactive $file; done

RUN cd ../zfs
    ./configure
    make pkg-utils pkg-kmod \
    for file in *.deb; do sudo gdebi -q --non-interactive $file; done
