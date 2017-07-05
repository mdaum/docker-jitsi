FROM ubuntu:trusty
RUN apt-get update; apt-get install -y wget dnsutils
RUN wget -qO - https://download.jitsi.org/jitsi-key.gpg.key | sudo apt-key add -
RUN echo 'deb http://download.jitsi.org stable/' >> /etc/apt/sources.list.d/jitsi-stable.list
RUN apt-get -y update; apt-get -y install jitsi-videobridge

ADD start-jitsi.sh /usr/bin/start-jitsi.sh
CMD ["start-jitsi.sh"]
