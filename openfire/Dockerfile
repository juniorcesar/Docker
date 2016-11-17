FROM debian:latest
MAINTAINER juniorcesar.utfpr@gmail.com

ENV OPENFIRE_VERSION=4.0.1 \
    OPENFIRE_USER=openfire \
    OPENFIRE_DATA_DIR=/var/lib/openfire \
    OPENFIRE_LOG_DIR=/var/log/openfire

RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install openjdk-7-jre-headless wget nano net-tools -y \
 && wget http://download.igniterealtime.org/openfire/openfire_${OPENFIRE_VERSION}_all.deb -O /tmp/openfire_${OPENFIRE_VERSION}_all.deb \
 && dpkg -i /tmp/openfire_${OPENFIRE_VERSION}_all.deb \
 && rm -rf /tmp/openfire_${OPENFIRE_VERSION}_all.deb

EXPOSE 5222 5223  5269 7777 9090 9091

COPY entrypoint.sh /sbin/entrypoint.sh
RUN chmod 755 /sbin/entrypoint.sh

ENTRYPOINT ["/sbin/entrypoint.sh"]
