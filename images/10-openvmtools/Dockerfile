FROM ubuntu:16.10
# FROM arm=skip arm64=skip

# net-tools for ifconfig, iproute for ip
RUN apt-get update \
    && apt-get install -y open-vm-tools net-tools iproute \
    && rm -rf /var/lib/apt/*

ENTRYPOINT ["/usr/bin/ros", "entrypoint"]

RUN addgroup --gid 1100 rancher && \
    addgroup --gid 1101 docker && \
    adduser -q -u 1100 --gid 1100 --shell /bin/bash rancher && \
    adduser -q -u 1101 --gid 1101 --shell /bin/bash docker && \
    sed -i 's/rancher:!/rancher:*/g' /etc/shadow && \
    sed -i 's/docker:!/docker:*/g' /etc/shadow && \
    echo "docker:tcuser" | chpasswd
