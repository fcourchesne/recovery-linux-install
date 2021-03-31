# Generates a basic python image to do testing on on a bare minimum setup
FROM ubuntu:20.04
MAINTAINER Francis Courchesne <fcourchesne@gmail.com>
RUN apt-get update && apt-get install -y python3 python3-setuptools python3-pip && pip3 install numpy matplotlib scipy pandas && apt-get clean autoclean && apt-get autoremove --yes && rm -rf /var/lib/{apt,dpkg,cache,log}/
CMD python3 --version
