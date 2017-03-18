FROM rancher/os-debianconsole:v0.8.0-rc1
# FROM arm64=skip arm=skip
#FROM debian:jessie
MAINTAINER Sven Dowideit <SvenDowideit@home.org.au> @SvenDowideit

RUN apt-get update \
  && apt-get install -yq vim make git \
  	qemu-user-static qemu-system-arm qemu-system-x86 qemu-kvm 
  
ENTRYPOINT ["/bin/bash"]

