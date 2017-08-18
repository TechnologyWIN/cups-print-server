# Blah
FROM jlesage/baseimage-gui:alpine-3.6
MAINTAINER Henry Burroughs <henry@technologywin.com>
RUN apt-get update && apt-get install -y \
	cups xterm \
	hp-ppd \
	openprinting-ppds \
	printer-driver-all \
	foomatic-db-engine \
  && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

VOLUME ["/etc/cups","/var/log/cups","/var/spool/cups","/var/cache/cups"]

COPY startapp.sh /startapp.sh 

EXPOSE 631

ENV APP_NAME="gnome-print-config"

