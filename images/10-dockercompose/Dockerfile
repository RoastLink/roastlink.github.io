FROM alpine

ADD wonka.sh /usr/local/bin/
ADD entry.sh /usr/local/bin/
CMD ["/usr/local/bin/entry.sh"]
ENTRYPOINT ["/usr/bin/ros", "entrypoint"]
