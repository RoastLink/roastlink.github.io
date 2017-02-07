FROM debian
# FROM arm=skip arm64=skip

RUN apt-get update \
    && apt-get install -y virt-what \
    && rm -rf /var/lib/apt/* \
    && rm -rf /var/log/*

ADD vmtools.sh /usr/bin

CMD ["/usr/bin/vmtools.sh"]
# this entrypoint set's up links for system-docker etc
ENTRYPOINT ["/usr/bin/ros", "entrypoint"]
