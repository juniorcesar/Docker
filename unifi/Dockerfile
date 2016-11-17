FROM debian:latest
MAINTAINER juniorcesar.utfpr@gmail.com

RUN echo "deb http://www.ubnt.com/downloads/unifi/debian stable ubiquiti" >> /etc/apt/sources.list \
 && echo "deb http://downloads-distro.mongodb.org/repo/debian-sysvinit dist 10gen" >> /etc/apt/sources.list \
 && apt-key adv --keyserver keyserver.ubuntu.com --recv C0A52C50 \
 && apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10 \
 && apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install nano net-tools cifs-utils unifi -y

EXPOSE 6789/tcp 8843/tcp 8880/tcp 8080/tcp 8443/tcp 3478/udp 10001/udp

COPY entrypoint.sh /sbin/entrypoint.sh
RUN chmod 755 /sbin/entrypoint.sh

ENTRYPOINT ["/sbin/entrypoint.sh"]