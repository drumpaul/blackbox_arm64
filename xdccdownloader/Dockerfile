FROM ubuntu:18.04

COPY xdccdownloaderweb_1.3.7-1.deb /
COPY docker-entrypoint.sh /usr/local/bin/
ADD start /start

RUN chmod +x /start \
  && dpkg -i xdccdownloaderweb_1.3.7-1.deb \
  && apt update \
  && apt install -y python \
  && apt install -y python-setuptools \
  && rm -f /xdccdownloaderweb_1.3.7-1.deb
  
VOLUME /root
EXPOSE 8888

CMD exec /bin/bash /start
