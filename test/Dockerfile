FROM ubuntu:18.04

COPY xdccdownloaderweb_1.3.7-1.deb /

RUN dpkg -i xdccdownloaderweb_1.3.7-1.deb \
  && apt update \
  && apt install -y python \
  && apt install -y python-setuptools \
  && rm -f /xdccdownloaderweb_1.3.7-1.deb
  
RUN apt install -y nano \
	&& apt install -y curl \
	&& curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py \
	&& python /get-pip.py \
	&& pip install uncompyle6
	
VOLUME /root
EXPOSE 8888

CMD /etc/init.d/XdccDownloaderWeb start && tail -f /dev/null