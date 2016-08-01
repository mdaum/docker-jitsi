FROM ubuntu:trusty
RUN apt-get update; apt-get install -y wget dnsutils
RUN echo 'deb http://download.jitsi.org/deb binary/' >> /etc/apt/sources.list
RUN wget -qO - https://download.jitsi.org/nightly/deb/unstable/archive.key | apt-key add -
RUN apt-get update; apt-get -y install jitsi-videobridge

ADD start-jitsi.sh /usr/bin/start-jitsi.sh
CMD ["start-jitsi.sh"]
