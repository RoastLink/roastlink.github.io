FROM ubuntu:16.10
MAINTAINER Sven Dowideit <SvenDowideit@home.org.au>

RUN apt-get update && apt-get install -y openssh-server
RUN mkdir /var/run/sshd

# instead of hard coding the root password, docker exec into the running container and set it
#RUN echo 'root:screencast' | chpasswd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config \
    && sed -i 's/Port 22/Port 2222/' /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

EXPOSE 2222
CMD ["/usr/sbin/sshd", "-D"]
