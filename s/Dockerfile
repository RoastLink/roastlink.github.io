FROM rancher/os-ubuntuconsole:v0.7.0
# FROM arm64=skip arm=skip
RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -yq xfce4 slim xfce4-terminal libcap-ng-utils \
    && apt-get autoremove -y
COPY desktop.sh /usr/bin/desktop.sh
CMD ["desktop.sh"]
