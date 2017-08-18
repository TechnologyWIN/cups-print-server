# Blah
FROM jlesage/baseimage-gui:ubuntu-16.04
MAINTAINER Henry Burroughs <henry@technologywin.com>
RUN apt-get update && apt-get install -y \
	cups xterm \
	system-config-printer-gnome \
	hp-ppd \
	openprinting-ppds \
	printer-driver-all \
	foomatic-db-engine \
  && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

VOLUME ["/etc/cups","/var/log/cups","/var/spool/cups","/var/cache/cups"]


ADD cups /etc/services.d/cups
ADD cups-browsd /etc/services.d/cups-browsd

COPY startapp.sh /startapp.sh 

EXPOSE 631

ENV APP_NAME="CUPS GUI Print Configuration"
ENV KEEP_APP_RUNNING=1
ENV USER_ID=0

